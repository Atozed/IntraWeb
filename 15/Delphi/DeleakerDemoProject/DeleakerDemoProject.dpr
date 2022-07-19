program DeleakerDemoProject;

uses
  IWRtlFix,
  MidasLib,
  IWStart,
  uIWMainForm in 'uIWMainForm.pas' {IWMainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  udmMain in 'udmMain.pas' {dmMain: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
