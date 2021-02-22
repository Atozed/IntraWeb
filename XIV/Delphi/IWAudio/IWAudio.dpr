program IWAudio;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit5 in 'Unit5.pas' {IWForm5: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  DatamoduleUnit in 'DatamoduleUnit.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
