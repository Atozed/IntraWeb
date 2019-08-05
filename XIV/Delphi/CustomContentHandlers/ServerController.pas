unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseBrowserCheck(aSession: TIWApplication;
      var rBrowser: TBrowser);
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
  IW.Content.Handlers, IW.Content.XML;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseBrowserCheck(
  aSession: TIWApplication; var rBrowser: TBrowser);
begin
  if rBrowser is TOther then begin
    rBrowser.Free;
    rBrowser := TInternetExplorer.Create(8);
  end;
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
begin
  // Tell IntraWeb to redirect SearchEngine requests to some ContentHandler
  SearchEngineOptions.RedirectToContentHandler := True;
  // in this case, you must create a TContentBase descendant and add it to THandlers
  // using 'SearchEngineRequest' as the document path
  SearchEngineOptions.ContentHandlerPath := 'SearchEngineRequest';
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;

initialization
  TIWServerController.SetServerControllerClass;

  // This maps the login url our custom class TContentXML.
  // So, something like http://127.0.0.1:8888/GiveMeSomeXML will be redirected to
  // this handler.
  with THandlers.Add('', 'GiveMeSomeXML', TContentXML.Create) do begin
    CanStartSession := True;
    RequiresSessionStart := False;
    //RequiresSession := False;
  end;

end.

