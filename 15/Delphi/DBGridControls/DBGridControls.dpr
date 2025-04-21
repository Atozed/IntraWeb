program DBGridControls;

uses
  IWRtlFix,
  MidasLib,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStartHSys,
  UTF8ContentParser,
  Unit53 in 'Unit53.pas' {IWForm53: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStartHSys.Execute(True);
end.
