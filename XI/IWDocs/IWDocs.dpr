program IWDocs;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  MainForm in 'MainForm.pas' {FormMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  EditForm in 'EditForm.pas' {FormEdit: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(False);
end.
