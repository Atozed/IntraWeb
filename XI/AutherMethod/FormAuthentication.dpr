program FormAuthentication;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  NoAuthenticateForm in 'NoAuthenticateForm.pas' {frmNoAuthenticate: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  AuthenticateForm in 'AuthenticateForm.pas' {frmAuthenticate: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
