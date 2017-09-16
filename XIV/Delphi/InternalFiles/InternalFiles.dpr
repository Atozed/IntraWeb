program InternalFiles;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
