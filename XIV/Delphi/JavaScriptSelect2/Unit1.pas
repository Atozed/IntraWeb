unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompMemo, IWCompListbox, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML;

type
  TIWForm1 = class(TIWAppForm)
    IWComboBox1: TIWComboBox;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
  public
  end;

implementation

{$R *.dfm}


initialization
  TIWForm1.SetAsMainForm;

end.
