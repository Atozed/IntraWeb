unit MsgWAP;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWCompLabelWAP, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdPOP3, IdBaseComponent, IdMessage, IWWAPControls;

type
  TformMsgWAP = class(TIWAppFormWAP)
    lablMsg: TIWLabelWAP;
    linkMsgList: TIWHyperLinkWAP;
    linkLogout: TIWHyperLinkWAP;
    procedure IWAppFormWAPRender(Sender: TObject);
    procedure linkLogoutClick(Sender: TObject);
    procedure linkMsgListClick(Sender: TObject);
  public
    FMsgID: Integer;
  end;

implementation

uses
  SWSystem, ServerController, IWBaseForm, MailWAP;

{$R *.dfm}

procedure TformMsgWAP.IWAppFormWAPRender(Sender: TObject);
var
  LID: integer;
  LPOP: TIdPOP3;
  LMsg: TIdMessage;
  i: Integer;
begin
  LId := FMsgId;
  LPOP := TIdPOP3.Create(Self);
  LMsg := TIdMessage.Create(Self);
  try
    LPOP.Host := UserSession.MailServer;
    LPOP.Username := UserSession.UserName;
    LPOP.Password := UserSession.Password;
    LPOP.Connect;
    LPOP.Retrieve(LID, LMsg);



    lablMsg.Text := Format('Message from: %s', [LMsg.Headers.Values['From']]);
    lablMsg.Text := lablMsg.Text + EOL + Format('Date: %s', [LMsg.Headers.Values['Date']]);
    lablMsg.Text := lablMsg.Text + EOL + Format('Subject: %s', [LMsg.Headers.Values['Subject']]);
    lablMsg.Text := lablMsg.Text + EOL + EOL;
    for i := 0 to LMsg.Body.Count - 1 do begin
      lablMsg.Text := lablMsg.Text + LMsg.Body[i] + EOL;
    end;
  finally
    FreeAndNil(LMsg);
    FreeAndNil(LPOP);
  end;
end;

procedure TformMsgWAP.linkLogoutClick(Sender: TObject);
begin
  WebApplication.Terminate('Thanks for using WebMail Mobile');
end;

procedure TformMsgWAP.linkMsgListClick(Sender: TObject);
begin
  TformMailWAP.Create(WebApplication).Show;
  Release;
end;

end.
