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
    procedure IWServerControllerBaseBeforeDispatch(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
  public
  end;

  
  function UserSession: TIWUserSession;

implementation
{$R *.dfm}

uses
  IWInit, TaxiDM, Driver;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
  if WebApplication.RunParams.Values['driver']<>'' then begin
    VMainForm:= TfrmDriver.Create(WebApplication);
  end;
end;


procedure TIWServerController.IWServerControllerBaseBeforeDispatch(
  Sender: TObject; Request: TWebRequest; Response: TWebResponse;
  var Handled: Boolean);
begin
{
  if Request.QueryFields.Values['driver']<>'' then begin
    WebApplication.SetActiveForm(TfrmDriver.Create(WebApplication));
    Handled:= true;
//    Handled:= false;
  end
  else} begin
    Handled:= false;
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

 
