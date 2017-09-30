unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TIWMainForm = class(TIWAppForm)
    IWLabel1: TIWLabel;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWMainForm.SetAsMainForm;

end.
