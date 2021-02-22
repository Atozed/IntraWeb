program IWGridDataTables;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStartHSys,
  MidasLib,
  IWLFHashTable64,
  uFrmMain in 'uFrmMain.pas' {FrmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  udmMain in 'udmMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  TIWStartHSys.Execute(True);
end.
