program GoogleSearchDemo;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IW.ContentBot2 in 'IW.ContentBot2.pas',
  IW.ContentBot in 'IW.ContentBot.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
