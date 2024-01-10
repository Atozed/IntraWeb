program AsyncConfirm;

uses
  IWRtlFix,
  IWStartHSys,
  Unit69 in 'Unit69.pas' {IWForm69: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStartHSys.Execute(True);
end.
