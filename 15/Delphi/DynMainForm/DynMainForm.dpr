program DynMainForm;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  uForm1 in 'uForm1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uForm2 in 'uForm2.pas' {IWForm2: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.

