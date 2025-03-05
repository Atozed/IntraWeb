program TerminateAndRedirect;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit20 in 'Unit20.pas' {IWForm20: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
