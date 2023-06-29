unit Unit10;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TIWForm10 = class(TIWAppForm)
    IWLabel1: TIWLabel;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm10.SetAsMainForm;

end.
