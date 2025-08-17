unit Unit19;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompText;

type
  TIWForm19 = class(TIWAppForm)
    IWText1: TIWText;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm19.SetAsMainForm;

end.
