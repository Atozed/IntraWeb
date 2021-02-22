program CustomContentHandler;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IW.Content.XML in 'IW.Content.XML.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
