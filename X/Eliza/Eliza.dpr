program Eliza;

uses
  EZEliza,
  EZBillClinton,
  EZIFM,
  EZMSTechSupport,
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  Talk in 'Talk.pas' {formTalk: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
