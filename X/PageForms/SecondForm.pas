unit SecondForm;

interface

uses
  Classes, SysUtils, IWApplication, IWTypes, IWPageForm, IWInit,
  IWCompEdit, IWCompLabel, Controls, IWBaseControl, IWControl, IWCompButton,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformSecond = class(TIWPageForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWLabel2: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

procedure TformSecond.IWButton1Click(Sender: TObject);
begin
  IWLabel2.Text := 'Hello ' + IWEdit1.Text;
  IWLabel2.Visible := True;
end;

end.
