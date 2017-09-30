program MemoryManagerDemo;

//This demo is for Delphi 2005 (Win32) and below.

uses
  RecyclerMM, //This is the only line needed to use RecylclerMM
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  FormMainU in 'FormMainU.pas' {FormMain: TIWFormModuleBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  FormMMStatusU in 'FormMMStatusU.pas' {FormMMStatus: TIWAppForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
