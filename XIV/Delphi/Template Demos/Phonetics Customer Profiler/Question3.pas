unit Question3;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWTemplateProcessorHTML, IWCompButton, IWCompCheckbox,
  IWCompListbox, IWCompText, IWBaseControl, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWVCLBaseControl,
  IWVCLComponent, IWBaseHTMLControl;

type
  TformQuestion3 = class(TIWAppForm)
    textPrompt1: TIWText;
    cmboType: TIWComboBox;
    textPrompt2: TIWText;
    textPrompt3: TIWText;
    cmboPhone: TIWComboBox;
    chckDiscount: TIWCheckBox;
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
  Discount,
  ServerController, Proposal;

procedure TformQuestion3.butnNextClick(Sender: TObject);
begin
  with UserSession do begin
    PlanLD := cmboType.ItemIndex > 0;
    Phone := cmboPhone.Items[cmboPhone.ItemIndex];
  end;
  if chckDiscount.Checked then begin
    TformDiscount.Create(WebApplication).Show;
  end else begin
    TformProposal.Create(WebApplication).Show;
  end;
  Release;
end;


procedure TformQuestion3.btnStartOverClick(Sender: TObject);
begin
  // restart wizard
  UserSession.StartOver;
end;

end.
