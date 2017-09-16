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
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWEdit2: TIWEdit;
    IWEdit3: TIWEdit;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.RenderStream;

procedure TerminateAndRedirectEx(WebApplication: TIWApplication;
  const aMsg, aUrl: string; aTimeout: Integer);
var
  html: string;
  stream: TIWRenderStream;
begin
  html := '<!DOCTYPE HTML>' +
          '<HTML>' +
          '<HEAD><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' +
          '<script>' +
          'setTimeout(function(){window.location.href = "' + aUrl + '";}, ' + IntToStr(aTimeout * 1000) + ');' +
          '</script>' +
          '</HEAD>' +
          '<body>' +
          aMsg +
          '</body>' +
          '</HTML>';
  stream := TIWRenderStream.Create;
  stream.Write(html);
  WebApplication.SetRenderOverride(stream);
  WebApplication.Terminate;
end;

procedure TIWForm50.IWButton1Click(Sender: TObject);
var
  aUrl: string;
  aSecs: Integer;
  aMsg: string;
begin
  aUrl := IWEdit1.Text;
  aMsg := IWEdit2.Text;
  aSecs := StrToIntDef(IWEdit3.Text, 5);
  TerminateAndRedirectEx(WebApplication, aMsg, aUrl, aSecs);
end;

initialization
  TIWForm50.SetAsMainForm;

end.
