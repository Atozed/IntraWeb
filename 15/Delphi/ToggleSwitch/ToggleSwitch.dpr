program ToggleSwitch;

uses
  IWRtlFix,
  IWStart,
  Unit12 in 'Unit12.pas' {IWForm12: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
