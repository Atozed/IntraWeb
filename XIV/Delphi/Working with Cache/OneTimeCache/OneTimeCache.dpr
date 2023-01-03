program OneTimeCache;

uses
  Forms,
  IWStartHSys,
  UTF8ContentParser,
  Unit5 in 'Unit5.pas' {IWForm5: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStartHSys.Execute(True);
end.
