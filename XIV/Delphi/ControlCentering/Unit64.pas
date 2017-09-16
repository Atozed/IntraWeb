unit Unit64;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, Vcl.Forms,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion,
  IW.HTTP.Reply, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo;

type
  TIWForm64 = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWMemo1: TIWMemo;
    procedure IWAppFormGenerateForm(aReply: THttpReply; aHandled: Boolean);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure CenterControlInParent(AControl: TControl);
var
  x, y, w, h: Integer;
  pw, ph: Integer;
begin
  if Assigned(AControl.Parent) then begin
    pw := AControl.Parent.Width;
    ph := AControl.Parent.Height;
    w := AControl.Width;
    h := AControl.Height;
    x := (pw - w) div 2;
    y := (ph - h) div 2;
    AControl.SetBounds(x, y, w, h);
  end;
end;

procedure TIWForm64.IWAppFormCreate(Sender: TObject);
begin
  IWRegion1.Anchors := [];  // NO ANCHORS, so it will re-align when browser size changes
end;

procedure TIWForm64.IWAppFormGenerateForm(aReply: THttpReply; aHandled: Boolean);
begin
  CenterControlInParent(IWRegion1);
end;

initialization
  TIWForm64.SetAsMainForm;

end.
