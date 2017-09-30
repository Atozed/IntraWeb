unit QuickTimeForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompObject, IWCompQuickTime, Controls, Forms,
  MenuFrame, IWBaseHTMLControl;

type
  TformQuickTime = class(TIWAppForm)
    framMenu1: TframMenu;
    IWQuickTime1: TIWQuickTime;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


end.
