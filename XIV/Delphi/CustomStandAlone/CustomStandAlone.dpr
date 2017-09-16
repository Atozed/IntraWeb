program CustomStandAlone;

uses
  Forms,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {IWForm1: TIWFormModuleBase},
  CustomForm in 'CustomForm.pas' {FormCustom};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Custom StandAlone Server';
  Application.CreateForm(TFormCustom, FormCustom);
  Application.Run;
end.
