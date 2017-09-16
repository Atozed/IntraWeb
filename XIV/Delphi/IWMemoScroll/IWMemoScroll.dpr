program IWMemoScroll;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit43 in 'Unit43.pas' {IWForm43: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
