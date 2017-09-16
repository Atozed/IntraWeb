program IWFileUploaderDB;

uses
  MidasLib,
  IWRtlFix,
  Forms,
  IWStart,
  Unit51 in 'Unit51.pas' {IWForm51: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
