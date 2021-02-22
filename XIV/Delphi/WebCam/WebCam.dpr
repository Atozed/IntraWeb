program WebCam;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit11 in 'Unit11.pas' {IWForm11: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
