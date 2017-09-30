unit Third;

interface


uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWBaseControl, IWControl, IWCompLabel, IWVCLBaseControl, IWBaseHTMLControl;

type
  TThirdForm = class(TIWAppForm)
    IWLabel1: TIWLabel;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;




end.
