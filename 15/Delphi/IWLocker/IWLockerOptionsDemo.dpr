program IWLockerOptionsDemo;

uses
  IWRtlFix,
  IWStart,
  Unit40 in 'Unit40.pas' {IWForm40: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
