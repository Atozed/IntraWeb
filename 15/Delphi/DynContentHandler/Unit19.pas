unit Unit19;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompButton, IWCompEdit;

type
  TIWForm19 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm19.SetAsMainForm;

end.
