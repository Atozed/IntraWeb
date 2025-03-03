unit Unit4;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompCheckbox;

type
  TIWForm44 = class(TIWAppForm)
    IWCheckBox1: TIWCheckBox;
    IWCheckBox2: TIWCheckBox;
    IWCheckBox3: TIWCheckBox;
    IWCheckBox4: TIWCheckBox;
    IWCheckBox5: TIWCheckBox;
    IWCheckBox6: TIWCheckBox;
    IWCheckBox7: TIWCheckBox;
    IWCheckBox8: TIWCheckBox;
    IWCheckBox9: TIWCheckBox;
    IWCheckBox10: TIWCheckBox;
    IWCheckBox11: TIWCheckBox;
    IWCheckBox12: TIWCheckBox;
    IWCheckBox13: TIWCheckBox;
    procedure IWCheckBox13GetImageFileName(ASender: TObject; AChecked: Boolean; var
        aFileName: string);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm44.IWCheckBox13GetImageFileName(ASender: TObject; AChecked:
    Boolean; var aFileName: string);
begin
  if AChecked then
    aFileName := 'switch-on.png'
  else
    aFileName := 'switch-off.png';
end;


initialization
  TIWForm44.SetAsMainForm;

end.
