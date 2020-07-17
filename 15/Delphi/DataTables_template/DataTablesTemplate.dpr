program DataTablesTemplate;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  MidasLib,
  uFrmMain in 'uFrmMain.pas' {FrmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
