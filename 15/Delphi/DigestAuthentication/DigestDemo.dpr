program DigestDemo;

uses
  IWRtlFix,
  IWStart,
  Unit19 in 'Unit19.pas' {IWForm19: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
