program WindowIdChanged;

uses
  IWRtlFix,
  IWStart,
  uFrmMain in 'uFrmMain.pas' {frmMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uFrmSecond in 'uFrmSecond.pas' {frmSecond: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
