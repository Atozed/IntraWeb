unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseConfig(Sender: TObject);

  private
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IW.Browser.Other, IW.Browser.InternetExplorer,
  IW.Content.Handlers, IW.ContentBot, IW.ContentBot2,
  IWServerSession;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
begin
  SessionOptions.AllowSearchEngines := True;

  // Tell IntraWeb to redirect SearchEngine requests to some ContentHandler
  SearchEngineOptions.RedirectToContentHandler := True;

  // uncomment this line if you want to use TContentBot to respond
  SearchEngineOptions.ContentHandlerPath := '/bot/';

  // uncomment this line if you want to use TContentBot2 to respond
  //SearchEngineOptions.ContentHandlerPath := '/bot2/';
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;

initialization
  TIWServerController.SetServerControllerClass;

  // we register both TContentBot handlers, but only one will be used depending on
  // SearchEngineOptions.ContentHandlerPath setting
  with THandlers.Add('/bot/', '', TContentBot.Create) do begin
    CanStartSession := True;
    RequiresSessionStart := False;
  end;

  with THandlers.Add('/bot2/', '', TContentBot2.Create) do begin
    CanStartSession := True;
    RequiresSessionStart := False;
  end;
end.

