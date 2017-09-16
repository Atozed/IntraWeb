program ContentHandlersDemo;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  uMainForm in 'uMainForm.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uRedForm in 'uRedForm.pas' {RedForm: TIWAppForm},
  uBlueForm in 'uBlueForm.pas' {BlueForm: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
