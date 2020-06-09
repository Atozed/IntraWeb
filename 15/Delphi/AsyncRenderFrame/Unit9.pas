unit Unit9;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Unit10,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWCompLabel;

type
  TIWForm9 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWRegion1: TIWRegion;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
    FFrame: TIWFrame10;
    FLabel: TIWLabel;
    procedure CreateFrame;
  end;

implementation

{$R *.dfm}

procedure TIWForm9.CreateFrame;
begin
  FreeAndNil(FFrame);
  FFrame := TIWFrame10.Create(Self);
  FFrame.Parent := IWRegion1;
  FFrame.Left := (IWRegion1.Width - FFrame.Width) div 2;
  FFrame.Top := (IWRegion1.Height - FFrame.Height) div 2;
end;

procedure TIWForm9.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  CreateFrame;
end;

initialization
  TIWForm9.SetAsMainForm;

end.
