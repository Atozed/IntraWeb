program CustomURLResponder;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  MainForm in 'MainForm.pas' {IWMainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  myCustomURLResponder in 'myCustomURLResponder.pas',
  myForm in 'myForm.pas' {myIWForm: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
