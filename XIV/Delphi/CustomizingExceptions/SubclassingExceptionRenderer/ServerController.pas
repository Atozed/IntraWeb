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
  IWInit, IWGlobal, IWExceptionRenderer, Graphics;

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
  TIWExceptionRenderer.HeaderBackColor1 := $C79330;
  TIWExceptionRenderer.HeaderBackColor2 := $855A1C;
  TIWExceptionRenderer.BodyBackColor := clWebWHITESMOKE;
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.

