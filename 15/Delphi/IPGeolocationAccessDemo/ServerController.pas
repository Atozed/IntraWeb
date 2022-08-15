unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseBeforeNewSession(const aUrlPath: string; aRequest: THttpRequest;
      out vCanCreate: Boolean);

  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IWIPGeolocationClient, IW.Common.SysTools;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

{ TIWServerController }

procedure TIWServerController.IWServerControllerBaseBeforeNewSession(const aUrlPath: string; aRequest: THttpRequest;
  out vCanCreate: Boolean);
begin
  // Option 1: Block access if comes from certain countries:
  vCanCreate := True;
  if not IsLocalHost(aRequest.RemoteAddr) and not IsPrivateIP(aRequest.RemoteAddr) then
  begin
    // Will block everything from USA, Russia, China, Brazil and India. Sorry folks :-)
    vCanCreate := not TIWIPGeolocationHelper.BlockAccess(aRequest.RemoteAddr, 'US,RU,CN,BR,IN');
  end;

  // Option 2: Grant access only if comming from certain countries:
//  vCanCreate := False;
//  if not IsLocalHost(aRequest.RemoteAddr) and not IsPrivateIP(aRequest.RemoteAddr) then
//  begin
//    vCanCreate := not TIWIPGeolocationHelper.AllowAccess(aRequest.RemoteAddr, 'NZ');  // Will grant access only from New Zealand
//  end;
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

