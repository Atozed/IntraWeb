unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes;

type
  TfrmMain = class(TIWAppForm)
  public
  end;

implementation

{$R *.dfm}


initialization
  TfrmMain.SetAsMainForm;

end.
