unit Unit30;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompCheckbox, IWCompButton, IWCompMemo,
  IWCompExtCtrls, IWCompLabel, IWjQPageControl, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TIWForm30 = class(TIWAppForm)
    btnLoginGoogle: TIWImageButton;
    btnLoginAzure: TIWImageButton;
    imgLoginOK: TIWImageFile;
    IWLabel1: TIWLabel;
    IWjQPageControl1: TIWjQPageControl;
    IWjQPageControl1_page1: TIWjQTabPage;
    IWjQPageControl1_page2: TIWjQTabPage;
    IWMemo1: TIWMemo;
    IWMemo2: TIWMemo;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm30.IWButton1Click(Sender: TObject);
begin
  WebApplication.StartOAuthAuthentication('Azure');
end;

procedure TIWForm30.IWButton2Click(Sender: TObject);
begin
  WebApplication.StartOAuthAuthentication('Google');
end;

procedure TIWForm30.IWAppFormRender(Sender: TObject);
var
  loggedIn: Boolean;
begin
  loggedIn := Assigned(WebApplication.OAuthUserInfo);

  btnLoginGoogle.Visible := not loggedIn;
  btnLoginAzure.Visible := not loggedIn;
  imgLoginOK.Visible := loggedIn;

  if loggedIn then begin
    IWLabel1.Caption := 'User: ' + WebApplication.OAuthUserInfo.Name;
    IWLabel1.Visible := true;
  end;
end;

initialization
  TIWForm30.SetAsMainForm;

end.
