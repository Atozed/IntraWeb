unit uLogin;

interface
               
uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, frTopBar,
  frProductTree, Controls, Forms, IWCompLabel, IWBaseControl,
  IWControl, IWCompEdit, IWCompButton, IWCompMemo, IWVCLBaseControl,
  IWCompRectangle, IWHTMLControls, IWBaseHTMLControl;

type
  TISFLogin = class(TIWAppForm)
    rectMain: TIWRectangle;
    edEmail: TIWEdit;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    lblUserInvalid: TIWLabel;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblSignIn: TIWLabel;
    lnkSignIn: TIWLink;
    lnkRegister: TIWLink;
    lblRegister: TIWLabel;
    lblPassInvalid: TIWLabel;
    edPassword: TIWEdit;
    LeftTree: TISFProductTree;
    TopBar: TISFTopBar;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lnkSignInClick(Sender: TObject);
    procedure lnkRegisterClick(Sender: TObject);
  protected
    function ValidateSignIn : Boolean;
    procedure ResetLabels;
  public
  end;

implementation
{$R *.dfm}

uses
  uDBInterface, uRegister,
  ServerController;

procedure TISFLogin.IWAppFormCreate(Sender: TObject);
begin
  LeftTree.LoadTree;
  ResetLabels;
end;

procedure TISFLogin.lnkSignInClick(Sender: TObject);
begin
  if ValidateSignIn then begin
    ResetLabels;
    if CheckUser(Trim(edEMail.Text), edPassword.Text) then begin
      UserSession.UserPassword := edPassword.Text;
      UserSession.EMail := edEmail.Text;
      UserSession.AfterLogin;
    end else begin
      lblUserInvalid.Caption := 'Invalid user name or password.';
    end;
  end;
end;

procedure TISFLogin.lnkRegisterClick(Sender: TObject);
begin
  TISFRegister.Create(WebApplication).Show;
  Release;
end;

function TISFLogin.ValidateSignIn: Boolean;
begin
  Result := True;
  if (Trim(edEmail.Text) = '') then begin
    lblUserInvalid.Caption := 'Name must not be left blank.';
    Result := False;
  end else if (edPassword.Text = '') then begin
    lblPassInvalid.Caption := 'Password must not be left blank.';
    Result := False;
  end;
end;

procedure TISFLogin.ResetLabels;
begin
  lblUserInvalid.Caption := '';
  lblPassInvalid.Caption := '';
end;

end.
