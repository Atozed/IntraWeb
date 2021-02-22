program Authentication;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Main in 'Main.pas' {IWForm2: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Authorized in 'Authorized.pas' {IWForm1: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
