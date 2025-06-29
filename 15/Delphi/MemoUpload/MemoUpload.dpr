program MemoUpload;

uses
  IWRtlFix,
  IWStart,
  Unit9 in 'Unit9.pas' {IWForm9: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
