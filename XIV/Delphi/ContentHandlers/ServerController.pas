unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseConfig(Sender: TObject);
    procedure IWServerControllerBaseParseParameter(var AParam: string;
      var AllowIt: Boolean; const Index: Integer);

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IW.Content.Handlers, System.StrUtils,
  IW.Content.Base, IW.Content.Redirect, IW.Content.Form,
  uMainForm, uBlueForm, uRedForm, IWMimeTypes;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
var
  FormHandler: TContentForm;
  RedirectHandler: TContentRedirect;
begin
  // content handler which redirects any incoming request to mydoc.html to
  // the actual document AtozedDoc.html. It can be used to redirect to any URL,
  // not only files
  THandlers.Add('', '/mydoc.html', TContentRedirect.Create('/AtozedDoc.html'));

  // this is needed to actually serve HTML files (i.e. static content), owtherwise
  // IW will redirect to the main page
  TIWMimeTypes.RegisterType('.html', MIME_HTML, True);

  // Root handler points to the application root path and will execute whenever this path is used
  // directly via URL
  FormHandler := TContentForm.Create(TMainForm);
  FormHandler.CanStartSession := True;
  FormHandler.RequiresSessionStart := False;
  THandlers.AddRootHandler('', '/', FormHandler);    // AddRootHandler is only available in IW 15.2.2+

  // TContentForm which handles the "Blue" form
  FormHandler := TContentForm.Create(TBlueForm);
  // You can start the session using http://<server>/blueform.html
  FormHandler.CanStartSession := True;
  FormHandler.RequiresSessionStart := False;
  THandlers.Add('', '/blueform.html', FormHandler);

  // TContentForm which handles the "Red" form
  FormHandler := TContentForm.Create(TRedForm);
  // But you can't start the session using http://<server>/redform.html
  // in this case it will be redirected to the main page
  FormHandler.CanStartSession := False;
  FormHandler.RequiresSessionStart := True;
  // You can play with this property and see how the browser URL changes (or not) when,
  // for instance, a button is clicked in the Red form
  //FormHandler.AppendMappedURL := False;
  THandlers.Add('', '/redform.html', FormHandler);

  RedirectHandler := TContentRedirect.Create('/');
  RedirectHandler.CanStartSession := True;
  RedirectHandler.RequiresSessionStart := False;
  THandlers.Add('/test/', '*', RedirectHandler);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


procedure TIWServerController.IWServerControllerBaseParseParameter(
  var AParam: string; var AllowIt: Boolean; const Index: Integer);
begin
  if ContainsText(AParam, '<svg') then
    AllowIt := False;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

