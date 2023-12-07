program ReportBuilder;

uses
//  IWRtlFix,
  IWStart,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Unit2 in 'Unit2.pas' {dmReport: TDataModule};

{$R *.res}

begin
//  ServerController.TIWServerController.FixupPatchEnabled := False;
  TIWStart.Execute(True);
end.
