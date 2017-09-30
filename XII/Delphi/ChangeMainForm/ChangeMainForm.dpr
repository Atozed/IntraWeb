program ChangeMainForm;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit14 in 'Unit14.pas' {IWForm14: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit15 in 'Unit15.pas' {IWForm15: TIWAppForm},
  Unit16 in 'Unit16.pas' {IWForm16: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
