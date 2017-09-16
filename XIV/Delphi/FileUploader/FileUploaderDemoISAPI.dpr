library FileUploaderDemoISAPI;

uses
  ISAPIApp,
  IWInitISAPI,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit7 in 'Unit7.pas' {IWForm7: TIWAppForm};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
