unit Question2;

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
  TformQuestion2 = class(TIWAppForm)
    editMinutes: TIWEdit;
    textPrompt: TIWText;
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
  CallingPlan, ServerController, SysUtils;

procedure TformQuestion2.butnNextClick(Sender: TObject);
begin
  UserSession.OffPeakMins := StrToIntDef(editMinutes.Text, 0);
  TformCallingPlan.Create(WebApplication).Show;
  Release;
end;


procedure TformQuestion2.btnStartOverClick(Sender: TObject);
begin
  // restart wizard
  UserSession.StartOver;
end;

end.
