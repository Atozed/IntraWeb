program IWOAuthDemo;

uses
  IWRtlFix,
  IWStart,
  Unit30 in 'Unit30.pas' {IWForm30: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
