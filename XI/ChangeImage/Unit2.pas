unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompButton, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWExtCtrls, jpeg;

type
  TIWForm2 = class(TIWAppForm)
    IWImage1: TIWImage;
    IWImage2: TIWImage;
    IWButton1: TIWButton;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm2.SetAsMainForm;

end.
