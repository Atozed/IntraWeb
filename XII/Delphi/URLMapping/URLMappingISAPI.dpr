library URLMappingISAPI;

uses
  ISAPIApp,
  IWInitISAPI,
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  RedForm in 'RedForm.pas' {frmRed: TIWAppForm},
  BlueForm in 'BlueForm.pas' {frmBlue: TIWAppForm},
  MainForm in 'MainForm.pas' {frmMainForm: TIWAppForm};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
