program PaymentApp;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStartHSys,
  MainFormU in 'MainFormU.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IW.Content.Payment in 'IW.Content.Payment.pas',
  FailureFormU in 'FailureFormU.pas' {FailureForm: TIWAppForm},
  SuccessFormU in 'SuccessFormU.pas' {SuccessForm: TIWAppForm};

{$R *.res}

begin
  TIWStartHSys.Execute(True);
end.

