unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompCheckbox,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompLabel;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWCheckBox1: TIWCheckBox;
    IWButton2: TIWButton;
    IWLabel1: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
    procedure ShowPopup;
  end;

implementation

{$R *.dfm}

uses
  IWResourceStrings;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  ShowPopup;
end;

procedure TIWForm2.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ShowPopup;
end;

procedure TIWForm2.ShowPopup;
begin
  if IWCheckBox1.Checked then begin
    WebApplication.NewWindow('http://www.atozed.com', 'Atozed', 500, 400, [woDetectBlock])
  end else begin
    WebApplication.NewWindow('http://www.atozed.com', 'Atozed', 500, 400, [])
  end;
end;

initialization
  // you may customize the alert message in case the popup blocker is active
  RSPopupBlocked := 'Hey dude!! Disable your popup blocker!!';
  TIWForm2.SetAsMainForm;

end.
