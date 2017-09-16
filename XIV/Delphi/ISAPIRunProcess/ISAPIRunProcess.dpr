library ISAPIRunProcess;

uses
  IWRtlFix,
  ISAPIApp,
  IWInitISAPI,
  UTF8ContentParser,
  Unit45 in 'Unit45.pas' {IWForm45: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
