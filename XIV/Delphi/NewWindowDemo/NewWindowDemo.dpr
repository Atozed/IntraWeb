program NewWindowDemo;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit17 in 'Unit17.pas' {IWForm17: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
