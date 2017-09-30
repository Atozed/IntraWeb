unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IWAuther, IWAutherList,
  IWAutherEvent;

type
  TIWServerController = class(TIWServerControllerBase)
    IWAutherList1: TIWAutherList;
    IWAutherEvent1: TIWAutherEvent;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    function IWAutherEvent1Check(const aUser, aPass: string): Boolean;

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
  Result := aUser = aPass;
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
{
  if VMainForm <> Nil then begin
    VMainForm.Title := ASession.AuthUser;
    VmainForm.Name := WebApplication.AuthUser;
  end;
}
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

