//
unit RegionForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWControl, IWCompButton, Controls,
  Forms, IWVCLBaseContainer, IWContainer, IWRegion, IWCompMemo, IWCompText,
  IWCompCheckbox, IWCompLabel, MenuFrame, IWHTMLContainer,
  IWBaseHTMLControl, IWHTML40Container;

type
  TformRegion = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    IWText1: TIWText;
    IWRegion2: TIWRegion;
    IWRegion3: TIWRegion;
    IWLabel1: TIWLabel;
    IWCheckBox1: TIWCheckBox;
    IWCheckBox2: TIWCheckBox;
    framMenu1: TframMenu;
    IWRegion4: TIWRegion;
    IWLabel2: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWCheckBox2Click(Sender: TObject);
    procedure IWCheckBox1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


procedure TformRegion.IWButton1Click(Sender: TObject);
begin
  IWRegion1.VertScrollBar.Visible := not IWRegion1.VertScrollBar.Visible;
  IWRegion1.HorzScrollBar.Visible := not IWRegion1.HorzScrollBar.Visible;
end;

procedure TformRegion.IWCheckBox2Click(Sender: TObject);
begin
  IWRegion2.Visible := IWCheckBox2.Checked;
end;

procedure TformRegion.IWCheckBox1Click(Sender: TObject);
begin
  IWRegion3.Visible := IWCheckBox1.Checked;
end;

end.
