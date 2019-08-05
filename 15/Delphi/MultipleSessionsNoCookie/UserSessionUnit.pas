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
  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    { Private declarations }
    FIsLoggedIn: Boolean;
    FUserName: string;
    FUserId: string;
    function GetIsLoggedIn: Boolean;
    procedure ResetUser;
    procedure SetUserCookie;
  public
    { Public declarations }
    property IsLoggedIn: Boolean read GetIsLoggedIn;
    property UserName: string read FUserName;
    property UserId: string read FUserId;
    function Login(const AUserName, APassword: string): Boolean;
    function LoginById(const AUid: string): Boolean;
  end;

implementation

{$R *.dfm}

uses
  uUserList;

{ TIWUserSession }

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  FUserName := '';
end;

function TIWUserSession.GetIsLoggedIn: Boolean;
begin
  Result := (FUserName <> '') and (FUserId <> '');
end;

function TIWUserSession.Login(const AUserName, APassword: string): Boolean;
begin
  ResetUser;
  Result := TUserList.Instance.IsValid(AUserName, APassword, FUserId);
  if Result then begin
    FUserName := AUserName;
    SetUserCookie;
  end;
end;

function TIWUserSession.LoginById(const AUid: string): Boolean;
begin
  ResetUser;
  Result := TUserList.Instance.IsValid(AUid, FUserName);
  if Result then begin
    FUserId := AUid;
    SetUserCookie;
  end;
end;

procedure TIWUserSession.ResetUser;
begin
  FUserName := '';
  FUserId := '';
  //WebApplication.Response.Cookies.RemoveCookie('UID', WebApplication.CookiePath);
end;

procedure TIWUserSession.SetUserCookie;
begin
  WebApplication.Response.Cookies.AddCookie('UID', FUserId, WebApplication.CookiePath, SysUtils.Now + 1);
end;

end.
