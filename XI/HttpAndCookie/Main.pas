unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompLabel, IWCompEdit;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    EdtName: TIWEdit;
    IWLabel1: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  WebApplication.NewWindow('/temp/index.html?Name=' + EdtName.Text);
end;

initialization
  TIWForm2.SetAsMainForm;

end.
