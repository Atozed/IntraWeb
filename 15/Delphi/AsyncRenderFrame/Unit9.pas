unit Unit9;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Unit10,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWCompLabel, Unit11;

type
  TIWForm9 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWRegion1: TIWRegion;
    IWButton2: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
    FFrameCalc: TIWFrame10;
    FFrameGrid: TIWFrame11;
    FLabel: TIWLabel;
    procedure CreateFrameCalc;
    procedure CreateFrameGrid;
  end;

implementation

{$R *.dfm}

procedure TIWForm9.CreateFrameCalc;
begin
  FreeAndNil(FFrameCalc);
  FFrameCalc := TIWFrame10.Create(Self);
  FFrameCalc.Parent := IWRegion1;
  FFrameCalc.Left := (IWRegion1.Width - FFrameCalc.Width) div 2;
  FFrameCalc.Top := (IWRegion1.Height - FFrameCalc.Height) div 2;
end;

procedure TIWForm9.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  CreateFrameCalc;
end;

procedure TIWForm9.CreateFrameGrid;
begin
  FreeAndNil(FFrameGrid);
  FFrameGrid := TIWFrame11.Create(Self);
  FFrameGrid.Parent := Self;
  FFrameGrid.Left := IWRegion1.Left;
  FFrameGrid.Top := IWRegion1.Top + IWRegion1.Height + 50;
end;

procedure TIWForm9.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  CreateFrameGrid;
end;

initialization
  TIWForm9.SetAsMainForm;

end.
