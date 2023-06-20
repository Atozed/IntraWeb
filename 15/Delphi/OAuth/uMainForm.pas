unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompExtCtrls, uLoginForm;

type
  TMainForm = class(TIWAppForm)
    lbUserEmail: TIWLabel;
    lbUserName: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    btnLogout: TIWImageButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnLogoutAsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TMainForm.IWAppFormCreate(Sender: TObject);
begin
  lbUserName.Caption := 'User name: ' + WebApplication.OAuth.UserInfo.Name;
  lbUserEmail.Caption := 'User email: ' + WebApplication.OAuth.UserInfo.Email;
end;

procedure TMainForm.btnLogoutAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  UserSession.Logoff;
  WebApplication.ShowForm(TLoginForm, True, False);
end;

end.
