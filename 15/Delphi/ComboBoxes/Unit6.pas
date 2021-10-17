unit Unit6;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox, IWCompButton;

type
  TIWForm6 = class(TIWAppForm)
    IWComboBox1: TIWComboBox;
    IWLabel1: TIWLabel;
    IWComboBox2: TIWComboBox;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWComboBox3: TIWComboBox;
    IWButton1: TIWButton;
    IWLabel4: TIWLabel;
    IWComboBox4: TIWComboBox;
    IWButton2: TIWButton;
    IWLabel5: TIWLabel;
    IWComboBox5: TIWComboBox;
    IWButton3: TIWButton;
    IWLabel6: TIWLabel;
    IWComboBox6: TIWComboBox;
    IWButton4: TIWButton;
    IWListbox1: TIWListbox;
    IWLabel7: TIWLabel;
    IWLabel8: TIWLabel;
    IWListbox2: TIWListbox;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm6.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWComboBox3.Items.Assign(IWComboBox2.Items);
end;

procedure TIWForm6.IWButton2Click(Sender: TObject);
begin
  IWComboBox4.Items.Assign(IWComboBox2.Items);
end;

procedure TIWForm6.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWComboBox5.Items.Assign(IWComboBox2.Items);
end;

procedure TIWForm6.IWButton4Click(Sender: TObject);
begin
  IWComboBox6.Items.Assign(IWComboBox2.Items);
end;

initialization
  TIWForm6.SetAsMainForm;

end.
