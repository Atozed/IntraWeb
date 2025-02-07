unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdCustomTCPServer, IdCustomHTTPServer, IdHTTPServer, Vcl.StdCtrls, IdContext,
  System.Generics.Collections, System.Generics.Defaults,
  // Use IW own Http clients
  IW.HTTP.ClientBase, IW.HTTP.IndyClient;

const
  WM_PROCESS_PAYMENT = WM_APP + 100;

type
  TPayment = class
  strict private
    FMessageId: string;
    FSessionId: string;
    FResponseUrl: string;
    FValue: Double;
  public
    constructor Create(const aMessageId, aSessionId, aResponseUrl: string; aValue: Double);
    property MessageId: string read FMessageId;
    property SessionId: string read FSessionId;
    property ResponseUrl: string read FResponseUrl;
    property Value: Double read FValue;
  end;

  TMainForm = class(TForm)
    MemoLog: TMemo;
    IdHTTPServer1: TIdHTTPServer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FPendingPaymentList: TObjectList<TPayment>;
    procedure Log(const Msg: string);
    procedure IdHTTPServerProcessRequest(AContext: TIdContext; ARequestInfo:
        TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure WmProcessPayment(var Msg: TMessage); message WM_PROCESS_PAYMENT;
    function CreateHttpClient: TIWHttpClientBase;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  IWJsonDataObjects, IWMimeTypes, uCommonUtil;

// small "artificial" delay introduced to simulate a payment that takes some time to
// be processed. Change it conform your needs
const
  PaymentDelay = 2000;
  MaxPaymentValue = 10000.0;   // anything above this will cause the payment to fail

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FPendingPaymentList := TObjectList<TPayment>.Create;

  IdHTTPServer1.OnCommandGet := IdHTTPServerProcessRequest;
  IdHttpServer1.OnCommandOther := IdHTTPServerProcessRequest;
  IdHTTPServer1.DefaultPort := 8080;
  IdHTTPServer1.Active := True;
  Log('Server started on port 8080');
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  IdHTTPServer1.Active := False;
  Log('Server stopped');

  FPendingPaymentList.Free;
end;

procedure TMainForm.Log(const Msg: string);
begin
  TThread.Synchronize(nil,
    procedure
    begin
      MemoLog.Lines.Add(FormatDateTime('hh:nn:ss', Now) + ' - ' + Msg);
    end);
end;

function TMainForm.CreateHttpClient: TIWHttpClientBase;
begin
  TIWHTTPClientBase.SetClientClass('IndyHttpClient');   // we will use Indy for Client http communication
  Result := TIWHttpClientBase.CreateClient(Self);
  Result.ConnectTimeout := 5000;
  Result.ReadTimeout := 5000;
end;

procedure TMainForm.WmProcessPayment(var Msg: TMessage);
var
  LPayment: TPayment;
  HttpClient: TIWHttpClientBase;
  RequestJson: TJsonObject;
begin
  LPayment := TPayment(Msg.WParam);
  if LPayment = nil then
    Exit;
  // Delay a little bit. This simulates the time that the server needs to actually
  // process the payment in a real world server
  Sleep(PaymentDelay);
  try
    // Create an HttpClient instance to call payment server
    HttpClient := CreateHttpClient;
    try
      // Create the json packet for request
      RequestJson := TJsonObject.Create;
      try
        RequestJson.S['MessageId'] := LPayment.MessageId;
        RequestJson.S['SessionId'] := LPayment.SessionId;
        RequestJson.F['Value'] := LPayment.Value;
        if (LPayment.Value > 0) and (LPayment.Value <= MaxPaymentValue) then
        begin
          RequestJson.S['Status'] := 'success';
        end else begin
          RequestJson.S['Status'] := 'error';
          RequestJson.S['ErrorMessage'] := 'Insuficient funds';
        end;
        // call the web hook, using the ReponseUrl from the payment request
        HttpClient.Post(LPayment.ResponseUrl, RequestJson.ToJSON, 'application/json');
      finally
        RequestJson.Free;
      end;
    finally
      HttpClient.Free;
    end;
  finally
    LPayment.Free;
  end;
end;

procedure TMainForm.IdHTTPServerProcessRequest(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  RequestJson, ResponseJson: TJsonObject;
  RequestStr, ResponseStr: string;
  MessageId: string;
  SessionId: string;
  ResponseUrl: string;
  Value: Double;
  LPayment: TPayment;
begin
  Log('Request received: ' + ARequestInfo.RawHTTPCommand);

  LPayment := nil;

  if ARequestInfo.CommandType = hcPOST then
  begin
    try
      RequestStr := Trim(ARequestInfo.Params.Text);
      Log('Received JSON: ' + RequestStr);
      RequestJson := TJsonObject.Parse(RequestStr) as TJsonObject;
      try
        MessageId := GetRequestFieldAsString(RequestJson, 'MessageId');
        SessionId := GetRequestFieldAsString(RequestJson, 'SessionId');
        ResponseUrl := GetRequestFieldAsString(RequestJson, 'ResponseUrl');
        Value := GetRequestFieldAsFloat(RequestJson, 'Value');

        LPayment := TPayment.Create(MessageId, SessionId, ResponseUrl, Value);

        // Create response JSON
        // The response only confirms that the server receive the payment request
        // The payment status will be responded calling the web hook URL
        ResponseJson := TJsonObject.Create;
        try
          ResponseJson.S['status'] := 'received';
          ResponseJson.S['MessageId'] := MessageId;
          ResponseJson.S['SessionId'] := SessionId;
          ResponseJson.F['Value'] := Value;

          ResponseStr := ResponseJson.ToJSON;
          Log('Response JSON: ' + ResponseStr);
        finally
          ResponseJson.Free;
        end;
      finally
        RequestJson.Free;
      end;
    except
      on E: Exception do
      begin
        FreeAndNil(LPayment);
        ResponseStr := '{"status": "error", "message": "' + E.Message + '"}';
      end;
    end;
  end
  else
  begin
    ResponseStr := '{"status": "error", "message": "Only POST requests are supported"}';
  end;

  AResponseInfo.ContentType := 'application/json';
  AResponseInfo.CharSet := 'UTF-8';
  AResponseInfo.ContentText := ResponseStr;

  // notify that there is a new payment to be processed
  if Assigned(LPayment) then
  begin
    PostMessage(Self.Handle, WM_PROCESS_PAYMENT, WPARAM(LPayment), 0);
  end;
end;

{ TPayment }

constructor TPayment.Create(const aMessageId, aSessionId, aResponseUrl: string;
  aValue: Double);
begin
  inherited Create;
  FMessageId := aMessageId;
  FSessionId := aSessionId;
  FResponseUrl := aResponseUrl;
  FValue := aValue;
end;

end.


