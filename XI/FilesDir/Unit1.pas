unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWExtCtrls, IWCompButton;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWImageFile1: TIWImageFile;
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWGlobal;

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('Terminate.html');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
