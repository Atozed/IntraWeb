unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type

  TUserInfo = class
  private
    FEmail: string;
    FFullName: string;
    FUserName: string;
    procedure SetEmail(const Value: string);
    procedure SetFullName(const Value: string);
    procedure SetUserName(const Value: string);
  public
    property UserName: string read FUserName write SetUserName;
    property Email: string read FEmail write SetEmail;
    property FullName: string read FFullName write SetFullName;
    //
    class function CreateUser(aUserName: string): TUserInfo;
  end;

  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    FCurrentUser: TUserInfo;
    procedure SetCurrentUser(const Value: TUserInfo);
    { Private declarations }
  public
    { Public declarations }
    property CurrentUser: TUserInfo read FCurrentUser write SetCurrentUser;
    procedure LoadUser(aUserName: string);
  end;

implementation

uses Utils, IWGlobal, IWApplication, IWInit;

{$R *.dfm}

{ TIWUserSession }

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  if Assigned(FCurrentUser) then begin
    FreeAndNil(FCurrentUser);
  end;
end;

procedure TIWUserSession.LoadUser(aUserName: string);
begin
  CurrentUser := TUserInfo.CreateUser(aUserName);
  WebApplication.Permissions.CanEditPages := True;
end;                                      

procedure TIWUserSession.SetCurrentUser(const Value: TUserInfo);
begin
  FCurrentUser := Value;
end;

{ TUserInfo }

class function TUserInfo.CreateUser(aUserName: string): TUserInfo;
begin
  Result := TUserInfo.Create;
  with Result do begin
    UserName := aUserName;
    Email := ReadStringFromIni(aUserName, 'email', gSC.AppPath + '#auth.ini');
    FFullName := ReadStringFromIni(aUserName, 'name', gSC.AppPath + '#auth.ini');
  end;
end;

procedure TUserInfo.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TUserInfo.SetFullName(const Value: string);
begin
  FFullName := Value;
end;

procedure TUserInfo.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

end.