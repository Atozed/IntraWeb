program PageUnloadedDemo;

uses
  IWRtlFix,
  IWStart,
  uIWForm1 in 'uIWForm1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  uIWForm2 in 'uIWForm2.pas' {IWForm2: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
