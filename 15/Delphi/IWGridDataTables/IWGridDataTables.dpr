program IWGridDataTables;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  MidasLib,
  uFrmMain in 'uFrmMain.pas' {FrmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  udmMain in 'udmMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
