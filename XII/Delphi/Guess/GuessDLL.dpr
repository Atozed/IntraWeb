library GuessDLL;

(*

Assuming the virtual directory that contains this DLL is /iw/ the URL to start this application is
http://127.0.0.1/iw/guessdll.dll

*)

uses
  ISAPIApp,
  IWInitISAPI,
  Main in 'Main.pas' {formMain: TIWFormModuleBase},
  ServerController in 'ServerController.pas' {IWServerController: TDataModule};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
