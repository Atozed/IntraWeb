program ComboBoxes;

uses
  IWRtlFix,
  IWStart,
  Unit6 in 'Unit6.pas' {IWForm6: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
