unit Unit10;

interface

uses
  SysUtils, Classes, Controls, Forms,
  IWVCLBaseContainer, IWColor, IWContainer, IWRegion, IWHTMLContainer,
  IWHTML40Container, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompLabel, IWCompEdit, IWCompButton;

type
  TIWFrame10 = class(TFrame)
    IWFrameRegion: TIWRegion;
    iwlbl1: TIWLabel;
    iwdt1: TIWEdit;
    IWLabel1: TIWLabel;
    iwdt2: TIWEdit;
    IWLabel2: TIWLabel;
    iwdt3: TIWEdit;
    IWButton1: TIWButton;
    procedure iwdt1AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  IWAppForm;

procedure TIWFrame10.iwdt1AsyncChange(Sender: TObject;
  EventParams: TStringList);
var
  n1, n2: Integer;
  code1, code2: Integer;
begin
  Val(iwdt1.Text, n1, code1);
  Val(iwdt2.Text, n2, code2);
  if (code1 = 0) and (code2 = 0) then
  begin
    iwdt3.Text := IntToStr(n1 + n2);
  end else begin
    iwdt3.Text := '';
  end;
end;

procedure TIWFrame10.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  frm: TIWAppForm;
begin
  frm := GetIWParentForm(Self) as TIWAppForm;
  frm.WebApplication.ShowMessage(iwdt1.HTMLName);
end;

end.
