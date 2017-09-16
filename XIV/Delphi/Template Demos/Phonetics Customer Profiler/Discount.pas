unit Discount;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWTemplateProcessorHTML, IWCompButton, IWCompEdit,
  IWCompLabel, IWCompListbox, IWBaseControl,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWVCLBaseControl, IWVCLComponent, IWBaseHTMLControl;

type
  TformDiscount = class(TIWAppForm)
    lablCreditUnion: TIWLabel;
    lablPromoCode: TIWLabel;
    lboxCreditUnion: TIWListbox;
    editPromoCode: TIWEdit;
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
  ServerController, Proposal,
  SysUtils;

procedure TformDiscount.butnNextClick(Sender: TObject);
begin
  with UserSession do begin
    CreditUnion := lboxCreditUnion.Items[lboxCreditUnion.ItemIndex];
    PromoCode := Trim(editPromoCode.Text);
  end;
  TformProposal.Create(WebApplication).Show;
  Release;
end;


procedure TformDiscount.btnStartOverClick(Sender: TObject);
begin
  // restart wizard
  UserSession.StartOver;
end;

end.
