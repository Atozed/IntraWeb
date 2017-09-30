unit MainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWURLResponderBase, IWURLResponder;

type
  TfrmMainForm = class(TIWAppForm)
  public
  end;

implementation

uses BlueForm;

{$R *.dfm}


initialization
  TfrmMainForm.SetAsMainForm;

end.
