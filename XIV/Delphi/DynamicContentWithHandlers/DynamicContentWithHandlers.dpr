program DynamicContentWithHandlers;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit10 in 'Unit10.pas' {IWForm10: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uContentReport in 'uContentReport.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
