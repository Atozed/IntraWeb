program MultiPageApp;

uses
  IWRtlFix,
  IWStart,
  Unit2 in 'Unit2.pas' {IWForm2: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
