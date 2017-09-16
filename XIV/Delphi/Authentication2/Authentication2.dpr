program Authentication2;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  uMainForm in 'uMainForm.pas' {IWMainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uForm1 in 'uForm1.pas' {IWForm1: TIWAppForm},
  uForm2 in 'uForm2.pas' {IWForm2: TIWAppForm},
  uForm3 in 'uForm3.pas' {IWForm3: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
