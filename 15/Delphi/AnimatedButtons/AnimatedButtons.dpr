program AnimatedButtons;

uses
  SysUtils,
  Classes,
  IWRtlFix,
  IWStartHSys,
  Unit66 in 'Unit66.pas' {IWForm66: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  TIWStartHsys.Execute(True);
end.
