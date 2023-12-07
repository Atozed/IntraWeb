program IWTelegramDemo;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  IW.HTTP.IndyClient,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
