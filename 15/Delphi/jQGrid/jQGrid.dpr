program jQGrid;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  uDBGridForm in 'uDBGridForm.pas' {DBGridForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uMainForm in 'uMainForm.pas' {MainForm: TIWAppForm},
  uGridForm in 'uGridForm.pas' {GridForm: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
