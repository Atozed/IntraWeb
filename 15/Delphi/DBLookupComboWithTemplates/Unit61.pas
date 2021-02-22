unit Unit61;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  IWCompLabel, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompListbox, IWDBStdCtrls, IWCompGrids, IWDBGrids, IWCompButton,
  IWCompText, IWHTMLControls, IWCompEdit, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWCompExtCtrls, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, IWCompCheckbox;

type
  TIWForm61 = class(TIWAppForm)
    IWText1: TIWText;
    IWURL1: TIWURL;
    IWRegion1: TIWRegion;
    lblCountry: TIWLabel;
    lblState: TIWLabel;
    lblCity: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    cbCity: TIWDBLookupComboBox;
    cbCountry: TIWDBLookupComboBox;
    cbState: TIWDBLookupComboBox;
  private
  public
  end;

implementation

{$R *.dfm}

uses
  UserSessionUnit,
  ServerController;

initialization
  TIWForm61.SetAsMainForm;

end.
