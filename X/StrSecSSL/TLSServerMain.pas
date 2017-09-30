unit TLSServerMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWBaseControl, IWControl, IWCompText, IWVCLBaseControl;

type
  TIWForm1 = class(TIWAppForm)
    IWText1: TIWText;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


initialization
  TIWForm1.SetAsMainForm

end.
 
