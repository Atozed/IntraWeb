program UsingExceptionRenderer;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit8 in 'Unit8.pas' {IWForm8: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
