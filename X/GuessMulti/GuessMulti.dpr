program GuessMulti;

uses
  Forms,
  IWMain,
  Main in '..\Guess\Main.pas' {formMain: TIWAppForm},
  Main32 in 'Main32.pas' {formMain32: TIWFormModuleBase},
  ServerController in '..\Guess\ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
