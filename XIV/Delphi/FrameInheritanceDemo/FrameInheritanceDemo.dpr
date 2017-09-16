program FrameInheritanceDemo;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  uMainForm in 'uMainForm.pas' {MainForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uParentFrame in 'uParentFrame.pas' {ParentFrame: TFrame},
  uChildFrame1 in 'uChildFrame1.pas' {ChildFrame1: TFrame};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
