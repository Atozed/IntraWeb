unit Unit50;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompLabel;

type
  TIWForm50 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel3: TIWLabel;
    IWEdit3: TIWEdit;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure TerminateAndRedirectWithTimer;
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm50.TerminateAndRedirectWithTimer;
var
  aUrl: string;
  aSecs: Integer;
  html: string;
begin
  aUrl := IWEdit1.Text;
  aSecs := StrToIntDef(IWEdit3.Text, 5);

  html := '<!DOCTYPE HTML>' +
          '<HTML>' +
          '<HEAD><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' +
          '<script>' +
          'setTimeout(function(){window.location.href = "' + aUrl + '";}, ' + IntToStr(aSecs * 1000) + ');' +
          '</script>' +
          '</HEAD>' +
          '<body>' +
          '{%APPNAME%} is redirecting you to "' + aUrl + '" in ' + IntToStr(aSecs) + ' seconds.' +
          '</body>' +
          '</HTML>';
  WebApplication.Terminate(html);
end;

procedure TIWForm50.IWButton1Click(Sender: TObject);
begin
  TerminateAndRedirectWithTimer;
end;

procedure TIWForm50.IWButton2AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  TerminateAndRedirectWithTimer;
end;

initialization
  TIWForm50.SetAsMainForm;

end.
