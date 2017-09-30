program FileManager;

uses
  Forms,
  IWStart,
  MainForm in 'MainForm.pas' {frmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  UploadForm in 'UploadForm.pas' {frmUpload: TIWAppForm},
  NewFolderForm in 'NewFolderForm.pas' {frmNewFolder: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
