program URLMapping;

uses
  Forms,
  IWMain,
  UTF8ContentParser,
  MainForm in 'MainForm.pas' {frmMainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  BlueForm in 'BlueForm.pas' {frmBlue: TIWAppForm},
  RedForm in 'RedForm.pas' {frmRed: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
