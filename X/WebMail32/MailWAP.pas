unit MailWAP;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWWAPControls, IWGridsWAP, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdPOP3, IdMessage;

type
  TformMailWAP = class(TIWAppFormWAP)
    linkOtherServer: TIWHyperLinkWAP;
    gridHeaders: TIWGridWAP;
    linkLogout: TIWHyperLinkWAP;
    procedure linkOtherServerClick(Sender: TObject);
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure linkLogoutClick(Sender: TObject);
  private
    procedure DoLinkClick(Sender: TObject);
  public
    procedure GetHeaders;

  end;

implementation

uses ServerController, MainWAP, IWBaseForm, MsgWAP;

{$R *.dfm}


procedure TformMailWAP.GetHeaders;
var
  LPOP: TIdPOP3;
  i: Integer;
  LMsg: TIdMessage;
  LHyperLink: TIWHyperLinkWAP;
  LMsgCount: Integer;
begin
  try
  LPOP := TIdPOP3.Create(nil);
  LMsg := TIdMessage.Create(nil);
  gridHeaders.Cell[0,0].Text := 'Subject';
  gridHeaders.Cell[0,1].Text := 'From';
  gridHeaders.Cell[0,2].Text := 'Date';
  try
    LPOP.Host := UserSession.MailServer;
    LPOP.Username := UserSession.UserName;
    LPOP.Password := UserSession.Password;
    LPOP.Connect;
    LMsgCount := LPOP.CheckMessages;
    gridHeaders.RowCount := LMsgCount + 1;
    for i := 1 to LMsgCount do begin
      LMsg.Clear;
      LPOP.RetrieveHeader(i, LMsg);
      LHyperLink := TIWHyperLinkWAP.Create(self);
      LHyperLink.Caption := LMsg.Headers.Values['Subject'];
      LHyperLink.Tag := i;
      LHyperLink.OnClick := DoLinkClick;
      gridHEaders.Cell[i, 0].Control := LHyperLink;
      gridHeaders.Cell[i, 1].Text := LMsg.Headers.Values['From'];
      gridHeaders.Cell[i, 2].Text := LMsg.Headers.Values['Date'];
    end;
    LPOP.Disconnect;
  finally
    FreeAndNil(LPOP);
    FreeAndNil(LMsg);
  end;
  except
    on e: exception do begin
    gridHeaders.RowCount:=1;
    gridHeaders.Cell[0,0].Text:=e.Message;
    end;
  end;
end;

procedure TformMailWAP.DoLinkClick(Sender: TObject);
var
  LId: Integer;
begin
  LId := (Sender as TIWHyperLinkWAP).Tag;
  with TformMsgWAP.Create(WebApplication) do begin
    FMsgID := LId;
    Show;
  end;
  Release;
end;

procedure TformMailWAP.linkOtherServerClick(Sender: TObject);
begin
  TformMainWAP.Create(WebApplication).Show;
  Release;
end;

procedure TformMailWAP.IWAppFormWAPCreate(Sender: TObject);
begin
  GetHeaders;
end;

procedure TformMailWAP.linkLogoutClick(Sender: TObject);
begin
  WebApplication.Terminate('Thanks for using WebMail Mobile');
end;

end.
