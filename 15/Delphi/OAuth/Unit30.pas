unit Unit30;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompCheckbox, IWCompButton, IWCompMemo,
  IWCompExtCtrls, IWCompLabel, IWjQPageControl, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdTCPServer, IdCmdTCPServer, IdHTTPProxyServer;

type
  TIWForm30 = class(TIWAppForm)
    btnLoginGoogle: TIWImageButton;
    btnLoginAzure: TIWImageButton;
    imgLoginOK: TIWImageFile;
    lbUserName: TIWLabel;
    IWjQPageControl1: TIWjQPageControl;
    IWjQPageControl1_page1: TIWjQTabPage;
    IWjQPageControl1_page2: TIWjQTabPage;
    IWMemo1: TIWMemo;
    IWMemo2: TIWMemo;
    IWjQPageControl1_page3: TIWjQTabPage;
    IWMemo3: TIWMemo;
    btnLoginFacebook: TIWImageButton;
    lbUserEmail: TIWLabel;
    btnLogout: TIWImageButton;
    procedure IWAppFormRender(Sender: TObject);
    procedure btnLoginGoogleClick(Sender: TObject);
    procedure btnLoginFacebookClick(Sender: TObject);
    procedure btnLoginAzureClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnLogoutClick(Sender: TObject);
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm30.IWAppFormCreate(Sender: TObject);
begin
  UserSession.CheckUserIsLoggedIn;
end;

procedure TIWForm30.btnLoginGoogleClick(Sender: TObject);
begin
  WebApplication.OAuth.StartAuthentication('Google');
end;

procedure TIWForm30.btnLoginAzureClick(Sender: TObject);
begin
  WebApplication.OAuth.StartAuthentication('Azure');
end;

procedure TIWForm30.btnLoginFacebookClick(Sender: TObject);
begin
  WebApplication.OAuth.StartAuthentication('Facebook');
end;

procedure TIWForm30.IWAppFormRender(Sender: TObject);
var
  LoggedIn: Boolean;
begin
  LoggedIn := UserSession.IsLoggedIn;
  btnLoginGoogle.Visible := not LoggedIn;
  btnLoginAzure.Visible := not LoggedIn;
  btnLoginFacebook.Visible := not LoggedIn;
  imgLoginOK.Visible := LoggedIn;
  lbUserName.Visible := LoggedIn;
  lbUserEmail.Visible := LoggedIn;
  btnLogout.Visible := LoggedIn;

  if LoggedIn and Assigned(WebApplication.OAuth.UserInfo) then begin
    lbUserName.Caption := 'User name: ' + WebApplication.OAuth.UserInfo.Name;
    lbUserEmail.Caption := 'User email: ' + WebApplication.OAuth.UserInfo.Email;
  end;
end;

procedure TIWForm30.btnLogoutClick(Sender: TObject);
begin
  UserSession.Logoff;
end;

initialization
  TIWForm30.SetAsMainForm;

end.
