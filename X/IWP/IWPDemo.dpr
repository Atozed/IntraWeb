library IWPDemo;

{ IMPORTANT NOTE:

  For instructions on how to use this demo, please
  see the IWP section in the IntraWeb Manual.

  Once you have read that, you need to set the
  IWPageController.ApplicationURL property according
  to the settings on your computer.
  
}


uses
  ActiveX,
  ComObj,
  WebBroker,
  ISAPIThreadPool,
  ISAPIApp,
  MainWM in 'MainWM.pas' {WebModule1: TWebModule},
  step1 in 'step1.pas' {FormStep1: TIWPageForm},
  step2 in 'step2.pas' {FormStep2: TIWPageForm};

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
