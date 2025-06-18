unit Unit10;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompText;

type
  TIWForm10 = class(TIWAppForm)
    IWText1: TIWText;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm10.SetAsMainForm;

end.
