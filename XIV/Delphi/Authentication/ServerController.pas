unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IWAutherEvent,
  IWAutherBase, IW.Http.Request, IW.Http.Reply;

type
  TIWServerController = class(TIWServerControllerBase)
    IWAutherEvent1: TIWAutherEvent;
    function IWAutherEvent1Check(const aUser, aPass: string): Boolean;
    procedure IWServerControllerBaseNewSession(aSession: TIWApplication);
    procedure IWServerControllerBaseCreate(Sender: TObject);

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

function TIWServerController.IWAutherEvent1Check(const aUser,
  aPass: string): Boolean;
begin
  Result := TIWUserSession(WebApplication.Data).CheckUser(aUser, aPass);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  aSession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
begin
  Self.Auther := IWAutherEvent1;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

