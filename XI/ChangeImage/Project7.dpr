program Project7;

uses
  Forms,
  IWStart,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Unit2 in 'Unit2.pas' {IWForm2: TIWFormModuleBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
