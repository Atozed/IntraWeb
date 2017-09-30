//
unit Flash;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWHTMLControls, IWCompLabel,
  IWCompButton, IWControl, IWCompText, IWCompFlash, MenuFrame,
  IWBaseControl, IWCompObject, IWVCLBaseControl, IWBaseHTMLControl;

type
  TformFlash = class(TIWAppForm)
    IWFlash1: TIWFlash;
    IWURL1: TIWURL;
    framMenu1: TframMenu;
    IWText1: TIWText;
  protected
  public
  end;

implementation

uses IWForm;
{$R *.dfm}

initialization
  Randomize;
end.
