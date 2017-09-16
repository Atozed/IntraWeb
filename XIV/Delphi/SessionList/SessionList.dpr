program SessionList;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit32 in 'Unit32.pas' {IWForm32: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
