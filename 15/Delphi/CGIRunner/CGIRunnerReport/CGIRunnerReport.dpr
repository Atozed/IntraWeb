program CGIRunnerReport;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  Unit13 in 'Unit13.pas' {IWForm13: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IWCGIRunner;

{$R *.res}

begin
  TIWStart.Execute(True);
end.
