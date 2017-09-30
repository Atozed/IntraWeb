program HTMLEditorSample;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
