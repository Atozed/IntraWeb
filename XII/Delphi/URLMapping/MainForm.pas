unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWURLResponderBase, IWURLResponder;

type
  TfrmMainForm = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses BlueForm;

{$R *.dfm}


procedure TfrmMainForm.IWButton1Click(Sender: TObject);
begin
  WebApplication.RedirectURL := 'http://www.atozed.com';
end;

initialization
  TfrmMainForm.SetAsMainForm;

end.
