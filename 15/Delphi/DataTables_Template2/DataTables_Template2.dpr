program DataTables_Template2;

uses
  IWRtlFix,
  IWStart,
  Unit10 in 'Unit10.pas' {IWForm910: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
