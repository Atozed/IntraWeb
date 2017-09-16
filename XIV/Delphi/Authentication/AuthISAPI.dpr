library AuthISAPI;

uses
  ISAPIApp,
  IWInitISAPI,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Authorized in 'Authorized.pas' {IWForm1: TIWAppForm},
  Main in 'Main.pas' {IWForm2: TIWAppForm},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
