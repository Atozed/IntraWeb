program AsyncRenderFrame;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  Unit9 in 'Unit9.pas' {IWForm9: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit10 in 'Unit10.pas' {IWFrame10: TFrame};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
