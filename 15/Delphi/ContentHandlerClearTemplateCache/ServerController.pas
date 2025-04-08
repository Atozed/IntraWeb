unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);

  private
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IW.Browser.Other, IW.Browser.InternetExplorer,
  IW.Content.Handlers, uContentClearTemplateCache;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;

initialization
  TIWServerController.SetServerControllerClass;

  // Just call http://<your application address>/ClearTemplateCache and the template cache
  // will be cleared
  with THandlers.Add('', 'ClearTemplateCache', TContentCleatTemplateCache.Create) do begin
    CanStartSession := False;
    RequiresSessionStart := False;
    RequiresSession := False;
  end;

end.

