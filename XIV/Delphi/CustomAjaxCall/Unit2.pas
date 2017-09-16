unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompLabel, IWHTMLControls;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWLink1: TIWLink;
    procedure IWAppFormCreate(Sender: TObject);
  private
    FCall: Integer;
    procedure DoMyAjaxFunc(EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

// this is the function that we want to call from our JavaScript
// the only thing it does is update IWLabel1 with received parameters
procedure TIWForm2.DoMyAjaxFunc(EventParams: TStringList);
var
  sl: TStrings;
  s: string;
begin
  sl := TStringList.Create;
  try
    sl.StrictDelimiter := True;
    sl.CommaText := EventParams.Values['data'];
    s := sl.CommaText;
  finally
    sl.Free;
  end;

  Inc(FCall);
  IWLabel1.Caption := 'Call #' + IntToStr(FCall) + ': ' + s;
end;

procedure TIWForm2.IWAppFormCreate(Sender: TObject);
const
  jsTag = '<script language="javascript" type="text/javascript">%s</script>';
var
  AjaxFunc: string;
begin
  IWLabel1.Caption := '';

  // this is the JavaScript function that we want to call.
  // This function, in turn, will call IWForm2.DoMyAjaxFunc()
  AjaxFunc := 'function myAjaxFunc() {' + #13 +
      'var myData = "Item 1,Item 2,Item 3,Item 4";' + #13 +
      'executeAjaxEvent("&data="+myData, null,"' + UpperCase(Self.Name) + '.DoMyAjaxFunc", false, null, false);' + #13 +
      'return true;}';
  PageContext.ExtraHeader.Add(Format(jsTag, [AjaxFunc]));

  // If we want to call IWForm2.DoMyAjaxFunc, then we have to register it as a Callback
  WebApplication.RegisterCallBack(UpperCase(Self.Name) + '.DoMyAjaxFunc', DoMyAjaxFunc);

  // We want IWButton1.onclick event to call myAjaxFunc(), yes? So hook it
  IWButton1.ScriptEvents.HookEvent('onClick', 'myAjaxFunc();');
  // We also want to call it from a IWLink
  IWLink1.ScriptEvents.HookEvent('onClick', 'myAjaxFunc();');
end;

initialization
  TIWForm2.SetAsMainForm;

end.
