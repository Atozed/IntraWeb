//
unit AlignAnchorsForm;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWHTMLControls, IWCompLabel,
  IWCompButton, IWControl, IWCompText, IWCompFlash, MenuFrame, IWContainer,
  IWRegion, IWCompRectangle, IWBaseControl, Menus, IWVCLBaseContainer,
  IWVCLBaseControl, IWHTMLContainer, IWBaseHTMLControl, IWHTML40Container;

type
  TformAlignAnchor = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWRectangle1: TIWRectangle;
    IWRectangle2: TIWRectangle;
    IWRectangle3: TIWRectangle;
    IWButton1: TIWButton;
    IWRegion2: TIWRegion;
    IWRectangle5: TIWRectangle;
    IWRectangle4: TIWRectangle;
    IWRectangle6: TIWRectangle;
    IWRectangle7: TIWRectangle;
    IWRectangle8: TIWRectangle;
    IWHRule1: TIWHRule;
    framMenu1: TframMenu;
    procedure IWButton1Click(Sender: TObject);
  protected
  public
  end;

implementation

uses IWForm, IWBaseForm;
{$R *.dfm}

procedure TformAlignAnchor.IWButton1Click(Sender: TObject);
begin
  WebApplication.ShowMessage('Hello');

  
end;

initialization
  Randomize;
end.
