program PCP;

uses
  Forms,
  IWMain,
  IWStart,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  Question1 in 'Question1.pas' {formQuestion1: TIWFormModuleBase},
  Question2 in 'Question2.pas' {formQuestion2: TIWFormModuleBase},
  CallingPlan in 'CallingPlan.pas' {formCallingPlan: TIWFormModuleBase},
  Question3 in 'Question3.pas' {formQuestion3: TIWFormModuleBase},
  Discount in 'Discount.pas' {formDiscount: TIWFormModuleBase},
  Proposal in 'Proposal.pas' {formProposal: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  TIWStart.Execute(true);
end.
