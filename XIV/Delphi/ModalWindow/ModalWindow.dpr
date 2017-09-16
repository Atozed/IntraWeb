program ModalWindow;

uses
  IWRtlFix,
//  IWJclStackTrace,
//  IWJclDebug,
  Forms,
  IWStart,
  UTF8ContentParser,
  Unit60 in 'Unit60.pas' {IWForm60: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
