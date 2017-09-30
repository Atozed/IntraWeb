library GuessDSO;

uses
  ApacheApp,
  IWInitApache,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Main in 'Main.pas' {formMain: TIWFormModuleBase};

{$R *.res}

exports
  apache_module name 'GuessDSO_module';

begin
  IWRun;
end.
