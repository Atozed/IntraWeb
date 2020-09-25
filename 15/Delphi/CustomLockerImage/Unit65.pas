unit Unit65;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm65 = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm65.IWButton1Click(Sender: TObject);
begin
  Sleep(5000);
end;

initialization
  TIWForm65.SetAsMainForm;

end.
