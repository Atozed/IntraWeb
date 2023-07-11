program BrowserSize;

uses
  IWRtlFix,
  IWStart,
  Unit46 in 'Unit46.pas' {IWForm46: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
