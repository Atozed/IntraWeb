program Recaptcha;

uses
  FastMM4,
  IWRtlFix,
  IWStart,
  Unit32 in 'Unit32.pas' {IWForm32: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IW.Http.WinHttpClient;

{$R *.res}

begin
  TIWStart.Execute(True);
end.
