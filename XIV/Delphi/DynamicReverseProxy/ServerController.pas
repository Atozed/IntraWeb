unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser,
  IW.HTTP.Request;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseRewriteURL(ARequest: THttpRequest; var ARewriteURL: string);

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

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
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;


procedure TIWServerController.IWServerControllerBaseRewriteURL(ARequest: THttpRequest;
  var ARewriteURL: string);
var
  LBaseUrl: string;
begin
  LBaseUrl := ARequest.RawHeaders.Values['X-MyURLBase'];
  if LBaseUrl <> '' then
    ARewriteURL := LBaseUrl;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

