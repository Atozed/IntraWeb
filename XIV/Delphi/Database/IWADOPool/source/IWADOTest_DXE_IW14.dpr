program IWADOTest_DXE_IW14;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  ufrmIWMain in 'forms\ufrmIWMain.pas' {frmIWMain: TIWAppForm},
  ServerController in 'IW14\ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'IW14\UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uDMDataMain in 'data\uDMDataMain.pas' {DMDataMain: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
