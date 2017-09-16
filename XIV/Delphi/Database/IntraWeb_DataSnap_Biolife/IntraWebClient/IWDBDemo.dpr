program IWDBDemo;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  IWMainForm in 'IWMainForm.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  DatamoduleUnit in 'DatamoduleUnit.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
