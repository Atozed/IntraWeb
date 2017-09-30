program Fishfact;

uses
  DBClient,
  Forms,
  IWMain,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.        
