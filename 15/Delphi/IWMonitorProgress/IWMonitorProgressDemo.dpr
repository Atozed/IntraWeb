program IWMonitorProgressDemo;

uses
  IWRtlFix,
  Forms,
  IWStart,
  Unit18 in 'Unit18.pas' {IWForm18: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uWorkerThread in 'uWorkerThread.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
