unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompText,
  IWCompLabel, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompEdit, IWCompButton;

type
  TIWForm2 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    IWText1: TIWText;
    IWButton1: TIWButton;
    IWText2: TIWText;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm2.SetAsMainForm;

end.
