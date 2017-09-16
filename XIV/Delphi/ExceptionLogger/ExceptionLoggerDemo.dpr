program ExceptionLoggerDemo;

uses
  IWJclDebug,       // <- Add this line to your project
  IWJclStackTrace,  // <- Add this line to your project
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
