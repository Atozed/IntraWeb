unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompRectangle, IWCompLabel, IWCompText, IWCompListbox,IWCompEdit,
  IWHTMLControls;

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
    IWLink1: TIWLink;
    procedure IWComboBox1Change(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
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

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  Sleep(30000);
  WebApplication.ShowMessage('click');
end;

procedure TIWForm2.IWLink1Click(Sender: TObject);
begin
  Webapplication.ShowMessage('click');
end;

initialization
  TIWForm2.SetAsMainForm;

end.
