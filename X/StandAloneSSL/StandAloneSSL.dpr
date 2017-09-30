program StandAloneSSL;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {IWForm1: TIWFormModuleBase},
  SecureForm in 'SecureForm.pas' {IWForm2: TIWAppForm},
  NonSecureForm in 'NonSecureForm.pas' {IWForm3: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
