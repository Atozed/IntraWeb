library RaveDemoDLL;

{%File 'ReadMe.txt'}

uses
  ISAPIApp,
  IWInitISAPI,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Unit1 in 'Unit1.pas' {IWForm1: TIWFormModuleBase};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
