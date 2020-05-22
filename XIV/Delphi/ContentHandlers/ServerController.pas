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

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IW.Content.Handlers,
  IW.Content.Base, IW.Content.Redirect, IW.Content.Form,
  uBlueForm, uRedForm;

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
begin
  THandlers.Add('', 'mydoc.html', TContentRedirect.Create('/AtozedDoc.html'));

  FormHandler := TContentForm.Create(TBlueForm);
  // You can start the session using http://<server>/blueform.html
  FormHandler.CanStartSession := True;
  FormHandler.RequiresSessionStart := False;
  THandlers.Add('', 'blueform.html', FormHandler);

  FormHandler := TContentForm.Create(TRedForm);
  // But you can't start the session using http://<server>/redform.html
  // in this case it will be redirected to the main page
  FormHandler.CanStartSession := False;
  FormHandler.RequiresSessionStart := True;
  THandlers.Add('', 'redform.html', FormHandler);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.

