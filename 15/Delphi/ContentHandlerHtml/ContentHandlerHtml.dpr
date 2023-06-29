program ContentHandlerHtml;

uses
  IWRtlFix,
  IWStart,
  Unit10 in 'Unit10.pas' {IWForm10: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uContentHtml in 'uContentHtml.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
