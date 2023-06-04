program TaskInThread;

uses
  IWRtlFix,
  IWStart,
  MidasLib,
  Unit45 in 'Unit45.pas' {IWForm45: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uWorkerThread in 'uWorkerThread.pas',
  uDBExporter in 'uDBExporter.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
