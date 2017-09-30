library WebSnapSurveyISAPI;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  ISAPIThreadPool,
  AppModule in 'AppModule.pas' {WebApp: TWebAppDataModule},
  LoginPageModule in 'LoginPageModule.pas' {LoginPage: TWebPageModule} {*.html},
  Page1Module in 'Page1Module.pas' {Page1: TWebPageModule},
  Page1Form in 'Page1Form.pas' {formPage1: TIWPageForm},
  Global in 'Global.pas',
  PageResultsModule in 'PageResultsModule.pas' {PageResults: TWebPageModule},
  PageResultsForm in 'PageResultsForm.pas' {formResults: TIWPageForm};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.Run;
end.
