unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  Controls, IWBaseControl, IWControl, IWCompText, IWVCLBaseControl,
  IWBaseHTMLControl;

type
  TIWForm1 = class(TIWAppForm)
    IWText1: TIWText;
    IWLabel1: TIWLabel;
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController;

initialization
  TIWForm1.SetAsMainForm
end.
