unit Unit55;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  IWCompLabel, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompEdit;

type
  TIWForm55 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWEdit2: TIWEdit;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

const
  CookieName = 'MyCustomCookie';

procedure TIWForm55.IWButton1Click(Sender: TObject);
begin
  WebApplication.Response.Cookies.AddCookie(CookieName,
    IWEdit1.Text,
    WebApplication.CookiePath,
    Now + 1);
end;

procedure TIWForm55.IWButton2Click(Sender: TObject);
begin
  IWEdit2.Text := WebApplication.Request.CookieFields.Values[CookieName];
end;

initialization
  TIWForm55.SetAsMainForm;

end.
