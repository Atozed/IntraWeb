program SessionCountDown;

uses
  IWRtlFix,
  Forms,
  IWStart,
  Unit44 in 'Unit44.pas' {IWForm44: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
