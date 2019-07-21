program IWADODBDemo;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  uFrmCustomers in 'uFrmCustomers.pas' {FrmCustomers: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  udmCustomers in 'udmCustomers.pas' {dmCustomers: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
