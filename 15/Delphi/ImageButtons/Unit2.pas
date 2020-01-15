unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompRectangle, IWCompLabel, IWCompText, IWCompListbox;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWRectangle1: TIWRectangle;
    IWText1: TIWText;
    IWLabel1: TIWLabel;
    IWButton5: TIWButton;
    IWButton6: TIWButton;
    IWButton7: TIWButton;
    IWButton8: TIWButton;
    IWRectangle2: TIWRectangle;
    IWText2: TIWText;
    IWComboBox1: TIWComboBox;
    IWLabel2: TIWLabel;
    procedure IWComboBox1Change(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWComboBox1Change(Sender: TObject);
begin
  if IWComboBox1.ItemIndex = 0 then
    Self.Css := ''
  else
    Self.Css := IWComboBox1.SelectedText;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
