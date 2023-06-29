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
    procedure IWServerControllerBaseConfig(Sender: TObject);
    procedure IWServerControllerBaseOAuthSuccess(ASession: TIWApplication;
      var Handled: Boolean);

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
  IWInit, IWGlobal, IWIPGeolocationClient, IW.Common.SysTools, StrUtils,
  IW.Content.Handlers, IW.OAuth.Base, IW.OAuth.Client, uMainForm;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

{ TIWServerController }

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
begin
  // Here we create and register the 2 applications. One for Azure, another for Google
  // You can have either or both.
  // However, before running it you need to create a new application on Azure and/or Google
  // Then you need to "register" them here with IntraWeb, so we can properly connect and
  // authenticate the users. This is how you do it:

  // Microsoft Azure:
  with TIWOAuthAppAzure.Create do begin
    TenantID := 'your Microsoft Azure tenant ID here';
    ClientID := 'your Microsoft Azure client ID here';
    ClientSecret := 'your Microsoft Azure client secret here';

    PromptType := ptConsent;
    RegisterApplication;
  end;

  // Google:
  // Please notice that we are using the client_secret.json file to load the properties on runtime
  // You can also set the properties just like above for Microsoft. Although Azure doesn't provide
  // a client_secret.json file, we also extended the same feature to the TIWOAuthAppAzure class
  // and you can also load it from a json file with the same format as Google's
  with TIWOAuthAppGoogle.Create do begin
    LoadFromJsonFile;
    PromptType := ptConsent;
    RegisterApplication;
  end;

  with TIWOAuthAppFacebook.Create do begin
    ClientID := 'your Facebook API client ID here';
    ClientSecret := 'your Facebook API client secret here';

    PromptType := ptLogin;
    RegisterApplication;
  end;
end;

type
  TIWAppAccess = class(TIWApplication);

procedure TIWServerController.IWServerControllerBaseOAuthSuccess(
  ASession: TIWApplication; var Handled: Boolean);
begin
  Assert(Assigned(ASession), 'Session not assigned'); //should be always assigned

  TIWUserSession(ASession.Data).IsLoggedIn := True;
  TIWUserSession(ASession.Data).SaveTokenInfo;
  ASession.ShowForm(TMainForm, True, False);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

