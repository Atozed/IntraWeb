program ClipboardEvents;

uses
  IWRtlFix,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit16 in 'Unit16.pas' {IWForm16: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
