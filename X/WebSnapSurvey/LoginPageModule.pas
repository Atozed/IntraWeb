
unit LoginPageModule;

interface

uses
  Windows, Messages, SysUtils, Classes, HTTPApp, WebModu, HTTPProd,
  CompProd, PagItems, SiteProd, WebAdapt, WebComp, MidItems, WebForm;

type
  TLoginPage = class(TWebPageModule)
    LoginAdapter: TLoginFormAdapter;
    Producer: TAdapterPageProducer;
    LoginForm: TAdapterForm;
    LoginFieldGroup: TAdapterFieldGroup;
    FldUserName: TAdapterDisplayField;
    FldPassword: TAdapterDisplayField;
    LoginCommandGroup: TAdapterCommandGroup;
  private
  public
  end;

// Procs
  function LoginPage: TLoginPage;

implementation
{$R *.dfm}  {*.html}

uses
  WebReq, WebDisp, WebCntxt, WebFact, Variants;

function LoginPage: TLoginPage;
begin
  Result := TLoginPage(WebContext.FindModuleClass(TLoginPage));
end;

initialization
  if WebRequestHandler <> nil then
    WebRequestHandler.AddWebModuleFactory(TWebPageModuleFactory.Create(TLoginPage, TWebPageInfo.Create([wpPublished {, wpLoginRequired}], '.html', '', 'Login'), crOnDemand, caCache));
end.
