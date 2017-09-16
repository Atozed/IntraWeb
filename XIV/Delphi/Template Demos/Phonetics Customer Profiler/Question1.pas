unit Question1;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWTemplateProcessorHTML, IWCompButton, IWCompEdit,
  IWCompText, IWBaseControl, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWVCLBaseControl, IWVCLComponent, IWBaseHTMLControl;

type
  TformQuestion1 = class(TIWAppForm)
    textPrompt: TIWText;
    editMinutes: TIWEdit;
    butnNext: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    btnStartOver: TIWButton;
    procedure butnNextClick(Sender: TObject);
    procedure btnStartOverClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  Question2,
  ServerController, SysUtils;

procedure TformQuestion1.butnNextClick(Sender: TObject);
begin
  UserSession.PeakMins := StrToIntDef(editMinutes.Text, 0);
  TformQuestion2.Create(WebApplication).Show;
  Release;
end;


procedure TformQuestion1.btnStartOverClick(Sender: TObject);
begin
  // restart wizard
  UserSession.StartOver;
end;

end.
