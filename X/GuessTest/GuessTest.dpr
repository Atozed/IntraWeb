program GuessTest;

uses
  TestFramework,
  GUITestRunner,
  IWInit,
  IWGlobal,
  Forms,
  LayoutTestsUnit in 'LayoutTestsUnit.pas',
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  Main in 'Main.pas' {formMain: TIWAppForm},
  FunctionalTestsUnit in 'FunctionalTestsUnit.pas';

{$R *.res}

begin
  GAppModeInit(Application);
  TGUITestRunner.runRegisteredTests;
end.