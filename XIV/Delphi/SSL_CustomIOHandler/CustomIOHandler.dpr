program CustomIOHandler;

uses
  IWStart,
  IWMain,
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uCustomIOHandler in 'uCustomIOHandler.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
