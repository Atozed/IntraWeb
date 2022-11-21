program IWVideo;

uses
  IWRtlFix,
  IWStart,
  Unit33 in 'Unit33.pas' {IWForm33: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
