library TemplateUnicodeISAPI;

uses
  ISAPIApp,
  IWInitISAPI,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
