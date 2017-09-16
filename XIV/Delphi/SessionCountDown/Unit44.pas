unit Unit44;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel, IWCompButton, IW.HTTP.Reply;

type
  TIWForm44 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWLabel2: TIWLabel;
    procedure IWAppFormGenerateForm(aReply: THttpReply; aHandled: Boolean);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure SetCountDown;
  public
  end;

implementation

{$R *.dfm}

const
  TimerCode =
    'function setupTimer(element, duration, interval) {' + #13#10 +
    '    var start = Date.now(),' + #13#10 +
    '        diff,' + #13#10 +
    '        minutes,' + #13#10 +
    '        seconds;' + #13#10 +
    '    clearInterval(window.mytimer);' + #13#10 +
    '    function timer() {' + #13#10 +
    '        diff = duration - (((Date.now() - start) / 1000) | 0);' + #13#10 +
    '        minutes = (diff / 60) | 0;' + #13#10 +
    '        seconds = (diff % 60) | 0;' + #13#10 +
    '        if (minutes < 0) {' + #13#10 +
    '          minutes = 0;' + #13#10 +
    '        }' + #13#10 +
    '        if (seconds < 0) {' + #13#10 +
    '          seconds = 0;' + #13#10 +
    '        }' + #13#10 +
    '        minutes = minutes < 10 ? "0" + minutes : minutes;' + #13#10 +
    '        seconds = seconds < 10 ? "0" + seconds : seconds;' + #13#10 +
    '        el = document.getElementById(element);' + #13#10 +
    '        if (el) {' + #13#10 +
    '          el.innerHTML = minutes + ":" + seconds;' + #13#10 +
    '        }' + #13#10 +
    '        if (window.mytimer != null & diff < 0) {' + #13#10 +
    '          clearInterval(window.mytimer);' + #13#10 +
    '        }' + #13#10 +
    '    };' + #13#10 +
    '    timer();' + #13#10 +
    '    window.mytimer = setInterval(timer, interval * 1000);' + #13#10 +
    '}';

procedure TIWForm44.IWAppFormGenerateForm(aReply: THttpReply; aHandled: Boolean);
begin
  SetCountDown;
end;

procedure TIWForm44.IWButton1Click(Sender: TObject);
begin
//
end;

procedure TIWForm44.IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
begin
//
end;

procedure TIWForm44.SetCountDown;
var
  js: string;
  seconds: Integer;
begin
  WebApplication.MarkAccess();
  seconds := WebApplication.SessionTimeOut * 60;
  PageContext.AddToJavaScriptOnce(TimerCode);
  js := 'setupTimer("IWLABEL1", ' + IntToStr(seconds) + ', 1);';
  if WebApplication.IsCallBack then begin
    WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA(js);
  end else begin
    PageContext.AddToInitProc(js);
  end;
end;

initialization
  TIWForm44.SetAsMainForm;

end.
