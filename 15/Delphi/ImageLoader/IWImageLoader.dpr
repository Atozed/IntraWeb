program IWImageLoader;

uses
  IWRtlFix,
  IWStart,
  Unit41 in 'Unit41.pas' {IWForm41: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
