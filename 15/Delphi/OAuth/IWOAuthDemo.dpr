program IWOAuthDemo;

uses
  IWRtlFix,
  MidasLib,
  IWStart,
  IW.Http.IndyClient,
  uLoginForm in 'uLoginForm.pas' {LoginForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uMainForm in 'uMainForm.pas' {MainForm: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
