//
unit StyleSheetForm;
{PUBDIST}

interface

uses
  IWAppForm, Classes,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}

  IWHTMLControls, IWCompButton, IWControl, IWCompLabel, IWCompText,
  MenuFrame, IWBaseControl, IWVCLBaseControl, IWBaseHTMLControl;

type
  TformStyleSheets = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWText1: TIWText;
    IWLabel2: TIWLabel;
    IWText2: TIWText;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    lablCurrentStylesheet: TIWLabel;
    framMenu1: TframMenu;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWFormModuleBaseRender(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses IWGlobal;

procedure TformStyleSheets.IWButton1Click(Sender: TObject);
begin
  Stylesheet.Filename := gSC.ContentPath + 'files\Features.css';
end;

procedure TformStyleSheets.IWButton2Click(Sender: TObject);
begin
  Stylesheet.Filename := gSC.ContentPath + 'files\Features2.css';
end;

procedure TformStyleSheets.IWFormModuleBaseRender(Sender: TObject);
begin
//  lablCurrentStylesheet.Caption := 'Current Stylesheet: ' + Stylesheet.Filename;
end;

end.
