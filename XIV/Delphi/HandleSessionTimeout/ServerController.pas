unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply, IWException, IWExceptionRenderer;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseConfig(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TIWExceptionRendererEx = class(TIWExceptionRenderer)
  public
    class function RenderHTML(AException: Exception; ARequest: THttpRequest): string; override;
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

{ TIWServerController }

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
  IWExceptionRenderer.SetExceptionRendererClass(TIWExceptionRendererEx);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

{ TIWExceptionRendererEx }

class function TIWExceptionRendererEx.RenderHTML(AException: Exception;
  ARequest: THttpRequest): string;
var
  Addr: string;
begin
  // the goal here is to respond to a session timeout error with a HTML which
  // will restart a new session
  if AException is EInvalidSession then begin
    Addr := #39 + TIWApplication.FullApplicationURL(ARequest) + '/$/Start' + #39; // start address enclosed in single quotes
    Result := '<!DOCTYPE html>' +
              '<html>' +
              '<head>' +
              '<script type="text/javascript">' +
              'setTimeout("window.location=' + Addr + '", 1);' +
              '</script>' +
              '</head>' +
              '<body>' +
              '</body>' +
              '</html>';
  end
  else
    Result := inherited;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

