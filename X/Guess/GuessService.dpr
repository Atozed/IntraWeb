program GuessService;

uses
  IWInitService,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TDataModule};

{$R *.res}

begin
  IWRun;
end.
