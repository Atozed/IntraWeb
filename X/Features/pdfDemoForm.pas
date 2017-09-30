//
unit pdfDemoForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWCompText, IWCompCheckbox,
  IWCompButton, Classes, IWControl, IWHTMLControls, IWExtCtrls,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}

  MenuFrame, IWServerControllerBase, IWBaseControl, IWVCLBaseControl,
  IWBaseHTMLControl;

type
  TformPdfDemo = class(TIWAppForm)
    IWButton1: TIWButton;
    IWText1: TIWText;
    IWRadioGroup1: TIWRadioGroup;
    framMenu1: TframMenu;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

Uses SysUtils, IWForm, IWGlobal;

{$R *.dfm}

procedure TformPdfDemo.IWButton1Click(Sender: TObject);
Var
  LFileName: String;
begin
  case IWRadioGroup1.ItemIndex of
    0: LFileName := 'Cover Page.pdf';
    1: LFileName := 'Installation.pdf';
  end;

  WebApplication.NewWindow(GServerController.FilesURL + LFilename);
end;

end.
