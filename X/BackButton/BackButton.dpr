program BackButton;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {MainForm: TIWFormModuleBase},
  Second in 'Second.pas' {SecondForm: TIWAppForm},
  Third in 'Third.pas' {ThirdForm: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
