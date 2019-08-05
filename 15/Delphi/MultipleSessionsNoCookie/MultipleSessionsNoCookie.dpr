program MultipleSessionsNoCookie;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  uFrmMain in 'uFrmMain.pas' {FrmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uFrmView1 in 'uFrmView1.pas' {FrmView1: TIWAppForm},
  uFrmView2 in 'uFrmView2.pas' {FrmView2: TIWAppForm},
  uUserList in 'uUserList.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
