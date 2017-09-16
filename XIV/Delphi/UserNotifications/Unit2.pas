unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  Unit3;

procedure TIWForm2.IWButton1Click(Sender: TObject);
var
  frm: TIWForm3;
begin
  WebApplication.ShowNotification('This will be visible only when you get back to this form');
  frm := TIWForm3.Create(WebApplication);
  frm.UserMessage := 'This is some log message';
  frm.Show;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
