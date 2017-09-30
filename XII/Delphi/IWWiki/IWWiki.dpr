program IWWiki;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  Utils in 'Utils.pas',
  WikiItemForm in 'WikiItemForm.pas' {frmManageItem: TIWAppForm},
  Main in 'Main.pas' {frmMain: TIWAppForm},
  Login in 'Login.pas' {frmLogin: TIWAppForm},
  Search in 'Search.pas' {frmSearch: TIWAppForm},
  WikiItem in 'WikiItem.pas';

{$R *.res}
var
  xGui: Boolean;

begin
  xGui := False;
  if (ParamCount > 0) then begin
    xGui := ParamStr(1) = 'GUI';
  end;
  TIWStart.Execute(xGui);
end.
