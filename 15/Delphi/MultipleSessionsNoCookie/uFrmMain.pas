unit uFrmMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompExtCtrls,
  IWCompEdit, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWBaseComponent,
  IWBaseHTMLComponent, IWBaseHTML40Component, IWCompButton;

type
  TFrmMain = class(TIWAppForm)
    IWRegion1: TIWRegion;
    edtUsername: TIWEdit;
    edtPassword: TIWEdit;
    IWImageFile1: TIWImageFile;
    dlgLogon: TIWModalWindow;
    IWLabel1: TIWLabel;
    procedure IWAppFormRender(Sender: TObject);
    procedure dlgLogonAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  private
    procedure ShowView1;
    procedure PromptForCredentials;
    procedure LoginById;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, uUserList, uFrmView1;

procedure TFrmMain.PromptForCredentials;
begin
  edtUsername.Clear;
  edtPassword.Clear;
  dlgLogon.Show;
end;

procedure TFrmMain.IWAppFormRender(Sender: TObject);
begin
  if not UserSession.IsLoggedIn then begin
    PromptForCredentials;
  end;
end;

procedure TFrmMain.LoginById;
var
  uid: string;
  p: Integer;
  url: string;
begin
  uid := WebApplication.RunParams.Values['UID'];    // UID passed in query string
  if uid= '' then begin
    uid := WebApplication.Request.GetCookieValue('UID');  // or, UID passed in a cookie, that's fine too!
  end;

  if (uid <> '') and UserSession.LoginById(uid) then begin
    url := WebApplication.Request.Referer;
    p := Pos('?', url);
    if p > 0 then begin
      Delete(url, p, MaxInt);
    end;
    WebApplication.GoToURL(url);
    Release;
  end;
end;

procedure TFrmMain.dlgLogonAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  LUser, LPW: string;
  btn: Integer;
begin
  LUser := EventParams.Values['edtUsername'];
  LPW := EventParams.Values['edtPassword'];
  btn := StrToIntDef(EventParams.Values['buttonIndex'], -1);

  // user cancelled
  if btn = 2 then begin
    WebApplication.TerminateAndRedirect('https://www.atozed.com/Intraweb');
  end;

  // login
  if UserSession.Login(LUser, LPW) then begin
    ShowView1;
  end else begin
    PromptForCredentials;
  end;
end;

procedure TFrmMain.ShowView1;
begin
  TFrmView1.Create(WebApplication).Show;
  Release;
end;

procedure TFrmMain.IWAppFormCreate(Sender: TObject);
begin
  LoginById;
end;

initialization
  TFrmMain.SetAsMainForm;

end.
