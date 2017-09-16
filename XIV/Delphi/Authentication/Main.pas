unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompMemo, IWCompGradButton;

type
  TIWForm2 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWMemo1: TIWMemo;
    IWGradButton1: TIWGradButton;
    IWLabel2: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWGradButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  Authorized, IWURL;

procedure TIWForm2.IWAppFormCreate(Sender: TObject);
begin
  IWLabel2.Caption := 'Authenticated user: ' + WebApplication.AuthUser;
end;

procedure TIWForm2.IWGradButton1Click(Sender: TObject);
begin
  WebApplication.GoToURL(WebApplication.SessionUrlBase + 'auth/index.html');
  Release;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
