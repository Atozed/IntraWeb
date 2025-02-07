unit IW.Content.Payment;

interface

uses
  Classes, IWApplication, IW.Content.Base, HTTPApp, IW.HTTP.Request,
  IW.HTTP.Reply, System.SysUtils, EncdDecd, System.IOUtils,
  IWAppCache, IWJsonDataObjects;

type
  TContentPayment = class(TContentBase)
  private
    procedure ProcessPayment(aJson: TJsonObject; aRequest: THttpRequest; aReply: THttpReply);
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication; aParams: TStrings): boolean; override;
  public
    constructor Create; override;
  private
  end;

implementation

uses
  IW.Content.Handlers, IWMimeTypes, ServerController, IW.HTTP.FileItem,
  IW.Common.FileStream, UserSessionUnit,
  uCommonUtil;

constructor TContentPayment.Create;
begin
  inherited;
  mFileMustExist := False;
end;

function TContentPayment.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
  aParams: TStrings): boolean;
var
  xFile: THttpFile;
  s: string;
  json: TJsonObject;
begin
  Result := False;
  if aRequest.Files.Count = 1 then begin
    xFile := THttpFile(aRequest.Files[0]);
    // read the json packet into a string
    s := TIWTextFileReader.ReadAllText(xFile.TempPathName, True);
    json := TJsonObject.Parse(s) as TJsonObject;
    try
      ProcessPayment(json, aRequest, aReply);
      Result := True;
    finally
      json.Free;
    end;
  end;
end;

procedure TContentPayment.ProcessPayment(aJson: TJsonObject; aRequest: THttpRequest; aReply: THttpReply);
var
  MessageId: string;
  SessionId: string;
  status: string;
  errorMessage: string;
  Value: Double;
begin
  try
    MessageId := uCommonUtil.GetRequestFieldAsString(aJson, 'MessageId');
    SessionId := uCommonUtil.GetRequestFieldAsString(aJson, 'SessionId');
    status := uCommonUtil.GetRequestFieldAsString(aJson, 'Status');
    errorMessage := aJson.SNN['ErrorMessage']; // this field may or may not exist. We retrieve it directly
    Value := uCommonUtil.GetRequestFieldAsFloat(aJson, 'Value');
    // This reply goes to the caller of the web hook (i.e. the remote payment API)
    aReply.Code := 200;
    aReply.WriteString('OK');
  except
    on E:Exception do
    begin
      aReply.Code := 400;     // respond with bad request status
      aReply.WriteString(E.Message);
    end;
  end;

  // Now, once we have a session Id we can get the session object
  // and call its methods
  gSessions.Execute(SessionId, procedure (ASession: TObject)
                    var
                      session: TIWApplication absolute ASession;
                    begin
                      if Assigned(ASession) then
                      begin
                        session.Initialize(aRequest, aReply);
                        TIWUserSession(session.Data).PaymentReceived(MessageId, status, errorMessage, Value);
                      end;
                    end);
end;

initialization

end.
