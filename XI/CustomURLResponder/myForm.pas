unit myForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TmyIWForm = class(TIWAppForm)
    IWlabel1: TIWLabel;
  public
  end;

implementation

{$R *.dfm}


end.
