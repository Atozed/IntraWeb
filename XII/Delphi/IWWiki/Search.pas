unit Search;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML;

type
  TfrmSearch = class(TIWAppForm)
    IWRegion: TIWRegion;
    IWLabel1: TIWLabel;
    IWTP: TIWTemplateProcessorHTML;
  public
  end;

implementation

{$R *.dfm}

uses IWURLMap;

initialization
  TIWURLMap.Add('/Search/', '', TfrmSearch);

end.
