program TimedTask;

uses
  IWRtlFix,
  IWStart,
  MidasLib,
  Unit45 in 'Unit45.pas' {IWForm45: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uWorkerThread in 'uWorkerThread.pas',
  uDBBackup in 'uDBBackup.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
