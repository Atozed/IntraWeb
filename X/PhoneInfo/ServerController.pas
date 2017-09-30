unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseWAPClientDetect(
      var AWAPClient: TIWWAPClient);
    procedure IWServerControllerBaseCreate(Sender: TObject);
  private
    FUserAgent: String;
  public
  end;

  
  function UserSession: TIWUserSession;

implementation
{$R *.dfm}

uses
  IWInit;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
  TIWUserSession(WebApplication.Data).UserAgent:= FUserAgent;
end;


procedure TIWServerController.IWServerControllerBaseWAPClientDetect(
  var AWAPClient: TIWWAPClient);
begin
  FUserAgent:= AWAPClient.UserAgent;
end;

procedure TIWServerController.IWServerControllerBaseCreate(
  Sender: TObject);
begin
  TIWWAPClient.LoadWAPDB;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

 
