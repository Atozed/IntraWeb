program ExceptionCallbackDemo;

uses
  IWRtlFix,
  Forms,
  IWStart,
  Unit56 in 'Unit56.pas' {IWForm56: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  EAppIntraWebSimple in 'EAppIntraWebSimple.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
