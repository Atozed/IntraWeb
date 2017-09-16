library TChartISAPI;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  ISAPIApp,
  IWInitISAPI,
  ISAPIThreadPool,
  UTF8ContentParser,
  Unit49 in 'Unit49.pas' {IWForm49: TIWAppForm},
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
