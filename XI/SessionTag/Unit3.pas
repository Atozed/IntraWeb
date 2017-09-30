unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls;

type
  TIWForm3 = class(TIWAppForm)
    IWURL1: TIWURL;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm3.SetAsMainForm;

end.
