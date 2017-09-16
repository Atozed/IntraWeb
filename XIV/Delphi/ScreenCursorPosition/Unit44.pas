unit Unit44;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  IWCompLabel, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompRectangle, IWCompButton, IWCompMemo;

type
  TIWForm44 = class(TIWAppForm)
    IWRectangle1: TIWRectangle;
    IWRegion1: TIWRegion;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    edtX: TIWEdit;
    edtY: TIWEdit;
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    IWMemo2: TIWMemo;
    procedure IWAppFormCreate(Sender: TObject);
  private
    procedure MyAjaxCallback(EventParams: TStringList);
  end;

implementation

{$R *.dfm}

procedure TIWForm44.MyAjaxCallback(EventParams: TStringList);
var
  sl: TStrings;
  xPos: string;
  yPos: string;
begin
  sl := TStringList.Create;
  try
    sl.StrictDelimiter := True;
    sl.CommaText := EventParams.Values['data'];
    xPos := sl.Values['xPos'];
    yPos := sl.Values['yPos'];
    IWMemo1.Lines.Add('xPos = ' + xPos + ', yPos = ' + yPos);
  finally
    sl.Free;
  end;
end;

procedure TIWForm44.IWAppFormCreate(Sender: TObject);
var
  js: string;
begin
  js := '	if (window.Event) {' +
	      '  document.captureEvents(Event.MOUSEMOVE);' +
	      '}' +
        'document.onmousemove = getCursorXY;';
  Self.AddToInitProc(js);
  WebApplication.RegisterCallBack('MyAjaxCallback', MyAjaxCallback);
end;

initialization
  TIWForm44.SetAsMainForm;

end.
