program CustomSessionTimeoutPage;

uses
  IWRtlFix,
  IWStart,
  Unit5 in 'Unit5.pas' {IWForm5: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  CustomExceptionRenderer in 'CustomExceptionRenderer.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
