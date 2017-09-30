unit MPEGForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompObject, IWCompMPEG, Controls, Forms,
  MenuFrame, IWBaseHTMLControl;

type
  TformMPEG = class(TIWAppForm)
    framMenu1: TframMenu;
    IWMPEG1: TIWMPEG;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;


end.
