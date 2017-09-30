unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IWURLResponderBase, IWURLResponder;

type
  TIWServerController = class(TIWServerControllerBase)
    IWURLResponderRedirect1: TIWURLResponderRedirect;
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
  if SameText(aName, 'RestartApp') then begin
    aOutput.WriteString(aSession.AppURLBase);
  end;

end;

initialization
  TIWServerController.SetServerControllerClass;

end.

 