program CheckBoxes;

uses
  IWRtlFix,
  IWStart,
  Unit4 in 'Unit4.pas' {IWForm44: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
