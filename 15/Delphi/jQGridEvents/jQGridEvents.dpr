program jQGridEvents;

uses
  IWRtlFix,
  MidasLib,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  uDBGridForm in 'uDBGridForm.pas' {DBGridForm: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
