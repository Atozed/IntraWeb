program ContentHandlerClearTemplateCache;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uContentClearTemplateCache in 'uContentClearTemplateCache.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
