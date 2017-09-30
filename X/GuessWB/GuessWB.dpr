library GuessWB;

(*

Assuming the virtual directory that contains this DLL is /iw/ the URL to start this application is
http://127.0.0.1/iw/guesswb.dll/guess

*)

uses
  WebBroker,
  ISAPIApp,
  IWLicenseKey, 
  WebModule in 'WebModule.pas' {webmMain: TWebModule},
  Main in 'Main.pas' {formMain: TIWFormModuleBase};

{$R *.res}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  Application.Initialize;
  Application.CreateForm(TwebmMain, webmMain);
  Application.Run;
end.
