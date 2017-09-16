unit Unit10;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  IWCompListbox, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm10 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWComboBox1: TIWComboBox;
    IWComboBox2: TIWComboBox;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    procedure IWComboBox1AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm10.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  Sleep(5000); // simulate a 5 seconds delay
  WebApplication.ShowMessage('Task completed');
end;

procedure TIWForm10.IWComboBox1AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  Sleep(3000); // simulate a delay
  IWComboBox2.Items.Clear;
  IWComboBox2.Items.Add('Subitem 1');
  IWComboBox2.Items.Add('Subitem 2');
  IWComboBox2.Items.Add('Subitem 3');
  IWComboBox2.Items.Add('Subitem 4');
  IWComboBox2.Items.Add('Subitem 5');
end;

initialization
  TIWForm10.SetAsMainForm;

end.
