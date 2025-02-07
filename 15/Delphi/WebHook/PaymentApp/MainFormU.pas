unit MainFormU;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWCompButton, IW.HTTP.ClientBase,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls;

type
  TMainForm = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWEditValue: TIWEdit;
    btnPayNow: TIWButton;
    IWMonitor1: TIWMonitor;
    procedure btnPayNowAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
  private
    FMessageId: string;
    FValue: Double;
    procedure PaymentCallback(EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, uCommonUtil,
  IW.Common.SysTools, IW.HTTP.WinHttpClient, IW.HTTP.IndyClient, IWJsonDataObjects;

procedure TMainForm.btnPayNowAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  LData: TStringList;
begin
  FMessageId := NewGuidEncode64;
  FValue := IWEditValue.AsFloat;
  if FValue <= 0 then
  begin
    WebApplication.ShowMessage('Invalid value');
    Exit;
  end;

  LData := TStringList.Create;
  LData.Add('MessageId=' + FMessageId);
  try
    WebApplication.ShowConfirm('Are you sure you want to pay ' + FormatFloat('$ 0.00', FValue) + '?',
                               'PaymentCallback', 'Confirm Payment', 'Yes', 'Cancel', LData);
  finally
    LData.Free;
  end;
end;

procedure TMainForm.IWAppFormCreate(Sender: TObject);
begin
  RegisterCallback('PaymentCallback', PaymentCallback);
end;

procedure TMainForm.IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
begin
  // First thing is reset the IWMonitor trigger (i.e. WebApplication.Status value)
  WebApplication.Status.Value := 0;
  // This will be triggered after UserSession.PaymentReceived() is called by our content handler
  // responsisble for the web hook. Payment may be either successful or not
  if UserSession.PaymentSuccessful then
  begin
    WebApplication.ShowForm('TSuccessForm', False, True);
  end
  else
  begin
    WebApplication.ShowForm('TFailureForm', False, True);
  end;
  Release;
end;

procedure TMainForm.PaymentCallback(EventParams: TStringList);
const
  PaymentServerUrl = 'http://localhost:8080';
var
  LMessageId: string;
  HttpClient: TIWHttpClientBase;
  RequestJson: TJsonObject;
  Res: Boolean;
begin
  // Validate the token send with ShowConfirm().
  // This is not required but guarantees that a direct call to PaymentCallback()
  // won't succeed
  LMessageId := EventParams.Values['MessageId'];
  if LMessageId <> FMessageId then
    raise Exception.Create('Invalid payment data. Aborting');

  // Create an HttpClient instance to call payment server
  HttpClient := uCommonUtil.CreateHttpClient;
  try
    // Create the json packet for request
    RequestJson := TJsonObject.Create;
    try
      RequestJson.S['MessageId'] := LMessageId;
      RequestJson.S['SessionId'] := WebApplication.AppID;
      RequestJson.F['Value'] := FValue;
      // this is our WebHook URL. It matches our content handler address
      RequestJson.S['ResponseUrl'] := WebApplication.ApplicationURL + '/PaymentReponse';
      // Call payment server with a POST request
      HttpClient.Post(PaymentServerUrl, RequestJson.ToJSON);
    finally
      RequestJson.Free;
    end;
    Res := HttpClient.ErrorCode = 0;
  finally
    HttpClient.Free;
  end;

  // Process the payment server response
  if Res then
  begin
    // Indicate to our user session that we are waiting for a payment to be processed
    UserSession.PaymentInitiated(LMessageId, FValue);
  end
  else   // treat http errors
  begin
    WebApplication.ShowMessage('Payment failed. Error trying to access payment server: ' + HttpClient.ErrorMessage);
  end;
end;

initialization
  TMainForm.SetAsMainForm;
  RegisterClass(TMainForm);  // so we can create it via WebApplication.ShowForm() using the class name

end.

