unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes;

type
  TFormMain = class(TIWAppForm)
  public
  end;

implementation
{$R *.dfm}

initialization
  TFormMain.SetAsMainForm;
end.
