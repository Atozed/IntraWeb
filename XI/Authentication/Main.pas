unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TIWForm2 = class(TIWAppForm)
    IWLabel1: TIWLabel;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm2.SetAsMainForm;

end.
