program DevArt;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit31 in 'Unit31.pas' {IWForm31: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
