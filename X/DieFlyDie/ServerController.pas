unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  dmDieFlyDie,
  IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
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
     CurrentProductID : integer; // Product being curently displayed
     CurrentCategoryID : integer; // Category currently being displayed
     CurrentOrderID : Integer;  //  used by order details
     CurrentOrderShipDate : TDateTime; // used by order details
     CurrentOrderDate : TDateTime; // used by order details
     LoggedIn : boolean; // User logged in or not

     UserID : Integer;
     UserPassword,
     FullName,
     Address,
     EMail : string;

     CurrentProductName : string;
     SearchText : String;

     CartUserID : string;

     LastVisitedForm : TIWAppFormClass; // This is interesting for the Login form only

     FlyDM : TdmMain;

     procedure NeedLogin(AForm : TIWAppFormClass);
     procedure AfterLogin;

     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;
  end;

  function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  DBISAMTb,
  uDBInterface,
  uLogin,
  IWInit,
  SWSystem,
  uMain,
  uRegister,
  StrUtils;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TUserSession.Create(nil);
end;

procedure TUserSession.AfterLogin;
begin
  LoggedIn := TRUE;
  TIWAppForm(WebApplication.ActiveForm).Release;
  if ( LastVisitedForm.ClassNameIs(TISFLogin.ClassName) or
       LastVisitedForm.ClassNameIs(TISFRegister.ClassName) )  then
    TISFMain.Create(WebApplication).Show
  else
    LastVisitedForm.Create(WebApplication).Show;
end;

constructor TUserSession.Create(AOwner: TComponent);
var
  f : integer;
  LTime : TDateTime;
begin
  inherited Create(AOwner);
  // This name should be unique per server / session
  // We use the session id as a CartUserID.

  CartUserID := WebApplication.AppID;   //  integer( @Self);
  LTime := Time;
  LoggedIn := FALSE;
  FlyDM := TdmMain.Create(AOwner);
  FlyDM.DBFly.Directory := IncludeTrailingPathDelim(gsAppPath) + 'Database';
  FlyDM.DBFly.DatabaseName := 'DieFly' + CartUserID + '_' + FloatToStr(LTime);
  FlyDM.sessionFly.SessionName := 'DieFly' + CartUserID + '_' + FloatToStr(LTime);
  FlyDM.DBFly.SessionName := FlyDM.sessionFly.SessionName;
  for f := 0 to Pred(FlyDM.ComponentCount) do
    if FlyDM.Components[f] is TDBISAMQuery then
      begin
        TDBISAMQuery(FlyDM.Components[f]).DatabaseName := FlyDM.DBFly.DatabaseName;
        TDBISAMQuery(FlyDM.Components[f]).SessionName := flydm.sessionFly.SessionName;
      end;
  FlyDM.tbOrders.DatabaseName := FlyDM.DBFly.DatabaseName;
  FlyDM.tbOrders.SessionName := FlyDM.DBFly.SessionName;
  FlyDM.DBFly.Connected := TRUE;
end;

destructor TUserSession.Destroy;
begin
  with FlyDM.qrCart do
  begin
    SQL.Text := 'DELETE FROM Cart WHERE SessionID = :ASessionID';
    ParamByName('ASessionID').AsString := CartUserID;
    ExecSQL;
  end;
  inherited Destroy;
end;

procedure TUserSession.NeedLogin(AForm: TIWAppFormClass);
begin
  if LoggedIn then begin
    CleanShoppingCart(CartUserID);
  end;
  LoggedIn := false;
  LastVisitedForm := AForm;
  TIWAppForm(WebApplication.ActiveForm).Release;
  TISFLogin.Create(WebApplication).Show;
end;

initialization
  TIWServerController.SetServerControllerClass;
end.

