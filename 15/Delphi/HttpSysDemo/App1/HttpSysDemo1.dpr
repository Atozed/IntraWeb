program HttpSysDemo1;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStartHSys,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStartHSys.Execute(True);
end.
