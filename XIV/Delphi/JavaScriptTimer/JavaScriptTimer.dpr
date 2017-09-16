program JavaScriptTimer;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit25 in 'Unit25.pas' {IWForm25: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
