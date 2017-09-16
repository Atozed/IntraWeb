program FileUploaderDemo;

uses
  MidasLib,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit7 in 'Unit7.pas' {IWForm7: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
