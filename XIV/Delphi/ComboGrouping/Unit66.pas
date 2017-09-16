unit Unit66;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox, IWCompLabel;

type
  TIWForm66 = class(TIWAppForm)
    IWComboBox1: TIWComboBox;
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm66.SetAsMainForm;

end.
