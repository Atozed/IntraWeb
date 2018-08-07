program HttpsDemo;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  Unit9 in 'Unit9.pas' {IWForm9: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
