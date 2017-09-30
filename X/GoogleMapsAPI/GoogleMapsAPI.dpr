program GoogleMapsAPI;
//library GoogleMapsAPI;
uses
  Forms,
  IWMain,
//  ISAPIApp,
//  IWInitISAPI,
  FormMainU in 'FormMainU.pas' {FormMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

//exports
//  GetExtensionVersion,
//  HttpExtensionProc,
//  TerminateExtension;

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
  //IWRun;
end.

