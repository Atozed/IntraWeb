program WebSnapSurvey;

(*
This is a WebSnap based demo and therefore must be treated as such. 
This demo was created using the WebSnap Web Application Debugger.

To run this demo:

1) Run the application.

2) Go back to Delphi, select Tools : Web Applciation Debugger

3) Select Activate

4) Click on the URL

5) Select WebSnapSurvey.Survey and press the button.
*)

{$APPTYPE GUI}

uses
  Forms,
  ComApp,
  IWInit,
  DebugForm in 'DebugForm.pas' {Form1},
  AppModule in 'AppModule.pas' {WebApp: TWebAppDataModule},
  LoginPageModule in 'LoginPageModule.pas' {LoginPage: TWebPageModule} {*.html},
  Page1Module in 'Page1Module.pas' {Page1: TWebPageModule},
  Page1Form in 'Page1Form.pas' {formPage1: TIWPageForm},
  Global in 'Global.pas',
  PageResultsModule in 'PageResultsModule.pas' {PageResults: TWebPageModule},
  PageResultsForm in 'PageResultsForm.pas' {formResults: TIWPageForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
