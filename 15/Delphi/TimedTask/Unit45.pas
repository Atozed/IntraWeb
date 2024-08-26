unit Unit45;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo;

type
  TIWForm45 = class(TIWAppForm)
    IWMemo1: TIWMemo;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm45.SetAsMainForm;

end.
