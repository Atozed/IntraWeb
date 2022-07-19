program IWSignaturePad;

uses
  IWRtlFix,
  IWStart,
  Unit27 in 'Unit27.pas' {IWForm27: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
