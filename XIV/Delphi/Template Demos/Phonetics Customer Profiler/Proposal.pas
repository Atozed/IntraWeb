unit Proposal;

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWTemplateProcessorHTML, IWCompLabel, IWBaseControl,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWVCLBaseControl, IWCompButton, IWVCLComponent, IWBaseHTMLControl;

type
  TformProposal = class(TIWAppForm)
    IWLabel1: TIWLabel;
    lablPreparedFor: TIWLabel;
    lablName: TIWLabel;
    lablAddress1: TIWLabel;
    lablAddress2: TIWLabel;
    lablCityStateZip: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    lablDiscountLabel: TIWLabel;
    lablPlan: TIWLabel;
    lablPhoneOption: TIWLabel;
    lablDiscount: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    btnStartOver: TIWButton;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure IWAppFormAfterRender(Sender: TObject);
    procedure btnStartOverClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController;

procedure TformProposal.IWFormModuleBaseCreate(Sender: TObject);
begin
  with UserSession do begin
    lablName.Caption := Name;
    lablAddress1.Caption := Address1;
    lablAddress2.Caption := Address2;
    lablCityStateZip.Caption := City + ', ' + State + ' ' + Zip;
    lablPlan.Caption := Plan;
    lablPhoneOption.Caption := Phone;
    lablDiscount.Caption := CreditUnion;
    lablDiscountLabel.Visible := Length(CreditUnion) > 0;
  end;
end;

procedure TformProposal.IWAppFormAfterRender(Sender: TObject);
begin
//  do not use this anymore as the customer profile must allow
//  going again through the wizard
//  WebApplication.Terminate;
end;


procedure TformProposal.btnStartOverClick(Sender: TObject);
begin
  // restart wizard
  UserSession.StartOver;
end;

end.
