unit uBlueForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompButton;

type
  TBlueForm = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TBlueForm.IWButton1Click(Sender: TObject);
begin
  Release;
end;

end.
