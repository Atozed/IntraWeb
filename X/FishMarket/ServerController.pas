unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseReEntry(ASession: TIWApplication);
    procedure IWServerControllerBaseBackButton(ASubmittedSequence,
      ACurrentSequence: Integer; AFormName: String; var VHandled,
      VExecute: Boolean);
  private
  public
  end;

  // This is a class which you can add variables to that are specific to the user. Add variables
  // to this class instead of creating global variables. This object can references by using:
  //   UserSession
  // So if a variable named UserName of type string is added, it can be referenced by using:
  //   UserSession.UserName
  // Such variables are similar to globals in a normal application, however these variables are
  // specific to each user.
  //
  // See the VCL for the Web Manual for more details.
  TUserSession = class(TComponent)
  public
    FParams: TStringList;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

// Procs
  function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  IWInit, Cart;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TUserSession.Create(nil);
end;

{ TUserSession }

constructor TUserSession.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FParams := TStringList.Create;
end;

destructor TUserSession.Destroy;
begin
  FreeAndNil(FParams);
  inherited Destroy;
end;

procedure TIWServerController.IWServerControllerBaseReEntry(
  ASession: TIWApplication);
begin
  TUserSession(ASession.Data).FParams.Assign(ASession.RunParams);
  if ASession.FindComponent('FormCart') = nil then
    TFormCart.Create(ASession).Show;
end;

procedure TIWServerController.IWServerControllerBaseBackButton(
  ASubmittedSequence, ACurrentSequence: Integer; AFormName: String;
  var VHandled, VExecute: Boolean);
begin
  if AFormName <> '' then begin
    if WebApplication.FindComponent(AFormName) = nil then
    begin
       VHandled := True;
       VExecute := True;
       WebApplication.Response.SendRedirect(WebApplication.ReferringURL);
    end;
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.


