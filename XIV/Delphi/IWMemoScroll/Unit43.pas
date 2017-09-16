unit Unit43;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls;

type
  TIWForm43 = class(TIWAppForm)
    IWTimer1: TIWTimer;
    IWMemo1: TIWMemo;
    IWRadioGroup1: TIWRadioGroup;
    procedure IWTimer1AsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  private
    LineCount: Integer;
    procedure AddLines(Count: Integer);
  public

  end;

implementation

{$R *.dfm}


procedure TIWForm43.AddLines(Count: Integer);
var
  i: Integer;
begin
  for i := LineCount to (LineCount + Count - 1) do begin
    IWMemo1.Lines.Add('This is line # ' + IntToStr(i));
  end;
  Inc(LineCount, Count);
end;

procedure TIWForm43.IWAppFormCreate(Sender: TObject);
begin
  LineCount := 1;
  AddLines(10);
end;

procedure TIWForm43.IWTimer1AsyncTimer(Sender: TObject;
  EventParams: TStringList);
var
  js: string;
  ScrollToBottom: Boolean;
begin
  AddLines(10);
  js := 'var el = document.getElementById("' + IWMemo1.HTMLName + '");' + #13#10 +
        'if (el) {' + #13#10;
  ScrollToBottom := IWRadioGroup1.ItemIndex = 1;
  if ScrollToBottom then begin
    js := js +
          '  el.scrollTop = el.scrollHeight;' + #13#10 +
          '}';
  end else begin
    js := js +
          '  el.scrollTop = 0;' + #13#10 +
          '}';
  end;
  WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA(js);
end;

initialization
  TIWForm43.SetAsMainForm;

end.
