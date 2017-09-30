program TimeOutResponse;

uses
  Forms,
  IWStart,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Unit1 in 'Unit1.pas' {IWForm1: TIWFormModuleBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
