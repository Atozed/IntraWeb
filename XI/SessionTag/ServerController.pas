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
    procedure IWServerControllerBaseSessionTag(aSession: TIWApplication;
      const aName: string; aParams: TStrings; aOutput: TStringStream);

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

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


procedure TIWServerController.IWServerControllerBaseSessionTag(
  aSession: TIWApplication; const aName: string; aParams: TStrings;
  aOutput: TStringStream);
begin
  // {%Session.Host%}
  if SameText(aName, 'Host') then begin
    aOutPut.WriteString(aSession.Request.Host);
  end;

  // {%Session.ApplicationURL%}
  if SameText(aName, 'ApplicationURL') then begin
    aOutPut.WriteString(aSession.ApplicationURL);
  end;

  // {%Session.ServerDateTime%}
  if SameText(aName, 'ServerDateTime') then begin
    aOutPut.WriteString(DateTimeToStr(TIWUserSession(aSession.Data).ServerDateTime));
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

