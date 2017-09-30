
unit AppModule;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, WebModu, ReqMulti,
  WebUsers, WebSess, WebDisp, WebAdapt, WebComp, IWModuleController;

type
  TWebApp = class(TWebAppDataModule)
    WebAppComponents: TWebAppComponents;
    ApplicationAdapter: TApplicationAdapter;
    PageDispatcher: TPageDispatcher;
    AdapterDispatcher: TAdapterDispatcher;
    SessionsService: TSessionsService;
    WebUserList: TWebUserList;
    EndUserSessionAdapter1: TEndUserSessionAdapter;
    WebDispatcher1: TWebDispatcher;
    IWModuleController1: TIWModuleController;
  private
  public
  end;

// Procs
  function WebApp: TWebApp;

implementation

{$R *.dfm}

uses WebReq, WebCntxt, WebFact, Variants;

function WebApp: TWebApp;
begin
  Result := TWebApp(WebContext.FindModuleClass(TWebApp));
end;

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.AddWebModuleFactory(TWebAppDataModuleFactory.Create(TWebApp, caCache));
end.
