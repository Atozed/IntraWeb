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
    procedure IWServerControllerBaseWindowIdChanged(ASession: TIWApplication;
      var vContinue: Boolean);

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
  IWInit, IWGlobal, uFrmMain, IWForm;

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

procedure TIWServerController.IWServerControllerBaseWindowIdChanged(
  ASession: TIWApplication; var vContinue: Boolean);
var
  i: Integer;
  frm: TComponent;
begin
  // Release all active forms of the current session
  for i := 0 to ASession.FormCount - 1 do
  begin
    frm := ASession.Forms[i];
    if frm is TIWForm then
      TIWForm(frm).Release;
  end;
  // Create the main form again
  frm := ASession.ShowForm(TFrmMain);
  // force the browser to reload the new form
  TIWForm(frm).AsyncReload;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

