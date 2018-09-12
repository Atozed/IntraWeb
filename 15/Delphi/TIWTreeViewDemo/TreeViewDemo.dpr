program TreeViewDemo;

uses
  IWRtlFix,
  Forms,
  IWStart,
  MainForm in 'MainForm.pas' {IWForm7: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
