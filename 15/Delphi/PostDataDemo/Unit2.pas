unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Imaging.pngimage, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompExtCtrls;

type
  TIWForm2 = class(TIWAppForm)
    IWImage1: TIWImage;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm2.SetAsMainForm;

end.
