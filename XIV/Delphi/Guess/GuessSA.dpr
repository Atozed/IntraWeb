program GuessSA;

uses
  IWStart,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(true);
end.


