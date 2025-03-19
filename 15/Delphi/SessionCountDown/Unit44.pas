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
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormGenerateForm(aReply: THttpReply; var aHandled: Boolean);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure SetCountdown;
  public
  end;

implementation

{$R *.dfm}

const
  TimerCode =
    'function setCountdown(objName, duration, displayElement, targetEvent, interval) {' + #13#10 +
    '    var start = Date.now(),' + #13#10 +
    '	    iMin = interval || 1,' + #13#10 +
    '        diff,' + #13#10 +
    '        minutes,' + #13#10 +
    '        seconds;' + #13#10 +
    '    iMin = iMin * 1000;' + #13#10 +
    '    clearInterval(window[objName]);' + #13#10 +
    '    function internalSetTimer() {' + #13#10 +
    '       diff = duration - (((Date.now() - start) / 1000) | 0);' + #13#10 +
    '       minutes = (diff / 60) | 0;' + #13#10 +
    '       seconds = (diff % 60) | 0;' + #13#10 +
    '       if (minutes < 0) {' + #13#10 +
    '         minutes = 0;' + #13#10 +
    '       }' + #13#10 +
    '       if (seconds < 0) {' + #13#10 +
    '         seconds = 0;' + #13#10 +
    '       }' + #13#10 +
    '       minutes = minutes < 10 ? "0" + minutes : minutes;' + #13#10 +
    '       seconds = seconds < 10 ? "0" + seconds : seconds;' + #13#10 +
    '       el = IW.$(displayElement);' + #13#10 +
    '       if (el) {' + #13#10 +
    '         el.innerHTML = minutes + ":" + seconds;' + #13#10 +
    '       }' + #13#10 +
    '       if (window[objName] != null & diff < 0) {' + #13#10 +
    '  			clearInterval(window[objName]);' + #13#10 +
    '			if (targetEvent) {' + #13#10 +
    '				targetEvent();' + #13#10 +
    '			}' + #13#10 +
    '       }' + #13#10 +
    '   };' + #13#10 +
    '   internalSetTimer();' + #13#10 +
    '   window[objName] = setInterval(internalSetTimer, iMin);' + #13#10 +
    '}';

 EventCode =
    'function DoOnTarget(){' +
    'alert("Your session expired!");' +
    '}';

procedure TIWForm44.IWAppFormCreate(Sender: TObject);
begin
  PageContext.AddToJavaScriptOnce(TimerCode);
  PageContext.AddToJavaScriptOnce(EventCode);
end;

procedure TIWForm44.IWAppFormGenerateForm(aReply: THttpReply; var aHandled: Boolean);
begin
  SetCountdown;
end;

procedure TIWForm44.SetCountdown;
var
  js: string;
  seconds: Integer;
begin
  WebApplication.MarkAccess();
  seconds := WebApplication.SessionTimeOut * 60;
  js := 'setCountdown("MyTimer1", ' + IntToStr(seconds) + ', "IWLABEL1", DoOnTarget);';
  WebApplication.ExecuteJS(js);
end;

procedure TIWForm44.IWButton1Click(Sender: TObject);
begin
//
end;

procedure TIWForm44.IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
begin
//
end;

initialization
  TIWForm44.SetAsMainForm;

end.
