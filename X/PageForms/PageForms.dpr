library PageForms;

uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIApp,
  MainWeb in 'MainWeb.pas' {WebModule1: TWebModule},
  MainForm in 'MainForm.pas' {formMain: TIWPageForm},
  SecondForm in 'SecondForm.pas' {formSecond: TIWPageForm};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Application.Initialize;
  Application.CreateForm(TWebModule1, WebModule1);
  Application.Run;
end.
