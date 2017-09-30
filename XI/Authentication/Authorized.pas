unit Authorized;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWURLMap;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWURLMap.Add('/auth/', 'index.html', TIWForm1);

end.                                                                                                     ``
