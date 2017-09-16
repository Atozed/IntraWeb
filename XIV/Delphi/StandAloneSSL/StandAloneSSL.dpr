program StandAloneSSL;

uses
  Forms,
  IWStart,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {FormMain: TIWFormModuleBase},
  SecureForm in 'SecureForm.pas' {FormSecure: TIWAppForm},
  NonSecureForm in 'NonSecureForm.pas' {FormNonSecure: TIWAppForm};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
