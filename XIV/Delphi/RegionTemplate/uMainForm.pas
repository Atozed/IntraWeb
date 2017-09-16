unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWLayoutMgrHTML, Vcl.Controls,
  Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TMainForm = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWLayoutMgrHTML1: TIWLayoutMgrHTML;
  public
  end;

implementation

{$R *.dfm}


initialization
  TMainForm.SetAsMainForm;

end.
