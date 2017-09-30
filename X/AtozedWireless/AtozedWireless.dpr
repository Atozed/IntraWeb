program AtozedWireless;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  MainForm in 'MainForm.pas' {formMain: TIWFormModuleBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  FormUserDetailsUnit in 'FormUserDetailsUnit.pas' {IWForm1: TIWAppFormWAP},
  FormBalanceUnit in 'FormBalanceUnit.pas' {IWForm2: TIWAppFormWAP},
  FormCallHistoryUnit in 'FormCallHistoryUnit.pas' {FormCallHistory: TIWAppFormWAP},
  FormAddCreditUnit in 'FormAddCreditUnit.pas' {FormAddCredit: TIWAppFormWAP},
  FormCallDetailUnit in 'FormCallDetailUnit.pas' {FormCallDetail: TIWAppFormWAP};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
