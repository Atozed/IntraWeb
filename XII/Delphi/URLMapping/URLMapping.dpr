program URLMapping;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  MainForm in 'MainForm.pas' {frmMainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  BlueForm in 'BlueForm.pas' {frmBlue: TIWAppForm},
  RedForm in 'RedForm.pas' {frmRed: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
