unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Datasnap.DBClient;

type
  TIWUserSession = class(TIWUserSessionBase)
    cdsUserAccess: TClientDataSet;
    cdsUserAccessTokenHash: TStringField;
    cdsUserAccessUserName: TStringField;
    cdsUserAccessUserEmail: TStringField;
    cdsUserAccessUserId: TStringField;
    cdsUserAccessToken: TStringField;
    cdsUserAccessRefreshToken: TStringField;
    cdsUserAccessApi: TStringField;
    cdsUserAccessExpiresAt: TDateTimeField;
    cdsUserAccessDateTime: TDateTimeField;
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    { Private declarations }
    FIsLoggedIn: Boolean;
    FTokenHash: string;
    FCDSFileName: string;
    function GetTokenInfo(const aTokenHash: string; out aApi, aToken, aRefreshToken: string): Boolean;
    procedure SaveAccessCookie(const aTokenHash: string);
    procedure RemoveAccessCokie;
    procedure SetIsLoggedIn(Value: Boolean);
    function DoSaveTokenInfo(const aUserName, aUserEmail, aUserId, aApi, aToken, aRefreshToken: string; aExpiresAt: TDateTime): string; overload;
    function UpdateTokenInfo(const aTokenHash, aToken, aRefreshToken: string): Boolean;
    function DeleteTokenInfo: Boolean;
    function HasTokenHash(out aTokenHash: string): Boolean;
  public
    // Verifies if user has already logged in before using one of the OAuth APIs
    // and, if so, tries to re-validate their access token.
    function CheckUserIsLoggedIn: Boolean;

    // save user info into user access table and returns the token hash used as the PK of the table
    // update token infor stored in our db. This is called by ServerController when
    // login is successful
    function SaveTokenInfo: string; overload;

    // User logoff method. Removes the access cookie from the browser and also deletes
    // the record related to OAuth authentication
    procedure Logoff;

    // Returns True if user is currently logged in using one of the OAuth APIs
    // Setting it to False is the same as calling Logoff
    property IsLoggedIn: Boolean read FIsLoggedIn write SetIsLoggedIn;
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo, IW.Common.Crypt, IW.OAuth.Base;

const
  Key = 'UvW*ZH$V(EEWyIqMgX2f';
  AccessCookieName = 'access_cookie';

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  // initializes our "database". For this example, a simple ClientDataSet
  // which persists into a XML file is used.
  // In real world applications, a real Database should be used here
  FCDSFileName := TIWAppInfo.GetAppPath + 'useraccess.xml';
  if FileExists(FCDSFileName) then begin
    cdsUserAccess.LoadFromFile(FCDSFileName);
  end else begin
    cdsUserAccess.CreateDataSet;
  end;
  cdsUserAccess.LogChanges := False;
end;

function TIWUserSession.CheckUserIsLoggedIn: Boolean;
var
  loggedIn: Boolean;
  TokenHash,
  Api, Token, RefreshToken: string;
begin
  // If WebApplication.OAuth.UserInfo is nil here, there is no user information
  // so the user hasn't authenticated yet
  loggedIn := Assigned(WebApplication.OAuth.UserInfo);

  if not loggedIn then begin
    // We check here if there is a token hash contained in an application cookie.
    // If we have a token hash, we assume that the user has been granted access before,
    // using one of the APIs (a returning user).
    // We will then re-authenticate (i.e. Validate) the acess token
    // In many cases, the adcess token will need to be refreshed
    if HasTokenHash(TokenHash) then begin
      // Using the Token hash coming obtained from the cookie, we will lookup into our
      // "database" and retrieve the information associated with that access token
      // This information will be used to validate the token ahead
      if GetTokenInfo(TokenHash, Api, Token, RefreshToken) then begin
        // Validate the access token
        loggedIn := WebApplication.OAuth.ValidateAccessToken(Api, Token, RefreshToken);
        if loggedIn then begin
          // If token is still valid, check if it needs to be re-saved to our DB
          UpdateTokenInfo(TokenHash, Token, RefreshToken);
        end;
      end;
    end;
  end;
  IsLoggedIn := loggedIn;
  Result := IsLoggedIn;
end;

function TIWUserSession.GetTokenInfo(const aTokenHash: string; out aApi, aToken, aRefreshToken: string): Boolean;
var
  encToken, encRefreshToken: string;
begin
  // Load the token information from our "database". In a real world application a real database should
  // be used here. Using a local file is not safe (both in terms of security and
  // also in terms of multi-threading/concurrency)
  Result := cdsUserAccess.Locate('TokenHash', aTokenHash, []);
  if not Result then
    Exit;

  aApi := cdsUserAccess.FieldByName('Api').AsString;
  encToken := cdsUserAccess.FieldByName('Token').AsString;
  encRefreshToken := cdsUserAccess.FieldByName('RefreshToken').AsString;

  // The token information has been saved encrypted. We need to decrypt it here
  aToken := TIWCrypt.DecryptStringBase64(encToken, Key);
  aRefreshToken := TIWCrypt.DecryptStringBase64(encRefreshToken, Key);
end;

function TIWUserSession.SaveTokenInfo: string;
var
  UserInfo: TOAuthUserInfo;
  Token: TOAuthToken;
begin
  UserInfo := WebApplication.OAuth.UserInfo;
  Token := WebApplication.OAuth.Token;

  Assert(Assigned(UserInfo), 'User info should be assigned');
  Assert(Assigned(Token), 'Token should be assigned');

  Result := DoSaveTokenInfo(UserInfo.Name,
                            UserInfo.Email,
                            UserInfo.Id,
                            Token.ApiId,
                            Token.AccessToken,
                            Token.RefreshToken,
                            Token.ExpiresAt);
end;

function TIWUserSession.DoSaveTokenInfo(const aUserName, aUserEmail, aUserId, aApi, aToken, aRefreshToken: string; aExpiresAt: TDateTime): string;
var
  encToken, encRefreshToken: string;
begin
  // calculate the token hash (internally TIWCrypt will use SHA-512 by default)
  Result := TIWCrypt.HashString(aToken);

  FTokenHash := Result;

  // Encrypt the token and the refresh token, using a strong algorithm.
  // It is also converted to Base64 string for convenience
  encToken := TIWCrypt.EncryptStringBase64(aToken, Key);
  encRefreshToken := TIWCrypt.EncryptStringBase64(aRefreshToken, Key);

  // Save into our "database". In a real world application a real database should
  // be used here. Saving into a local file is not safe (both in terms of security and
  // also in terms of multi-threading/concurrency)
  with cdsUserAccess do begin
    Insert;
    FieldByName('TokenHash').AsString := Result;
    FieldByName('UserName').AsString := aUserName;
    FieldByName('UserEmail').AsString := aUserEmail;
    FieldByName('UserId').AsString := aUserId;
    FieldByName('Api').AsString := aApi;
    FieldByName('Token').AsString := encToken;
    FieldByName('RefreshToken').AsString := encRefreshToken;
    FieldByName('ExpiresAt').AsDateTime := aExpiresAt;
    FieldByName('DateTime').AsDateTime := Now;
    Post;
    SaveToFile(FCDSFileName, dfXMLUTF8);
  end;

  // set our cookie which contains a hash of the access token
  SaveAccessCookie(Result);
end;

function TIWUserSession.UpdateTokenInfo(const aTokenHash, aToken, aRefreshToken: string): Boolean;
var
  encToken, encRefreshToken: string;
begin
  Result := cdsUserAccess.Locate('TokenHash', aTokenHash, []);
  if not Result then
    Exit;

  FTokenHash := aTokenHash;

  // Encrypt the token and the refresh token, using a strong algorithm
  encToken := TIWCrypt.EncryptStringBase64(aToken, Key);
  encRefreshToken := TIWCrypt.EncryptStringBase64(aRefreshToken, Key);

  // Update our "database" with the token information. It may or may not have changed
  with cdsUserAccess do begin
    if (FieldByName('Token').AsString <> encToken) or (FieldByName('RefreshToken').AsString <> encRefreshToken) then begin
      with cdsUserAccess do begin
        Edit;
        FieldByName('Token').AsString := encToken;
        FieldByName('RefreshToken').AsString := encRefreshToken;
        FieldByName('DateTime').AsDateTime := Now;
        Post;
        SaveToFile(FCDSFileName, dfXMLUTF8);
      end;
      // also update the cookie value
      SaveAccessCookie(aTokenHash);
    end;
  end;
end;

function TIWUserSession.DeleteTokenInfo: Boolean;
begin
  Result := (FTokenHash <> '') and cdsUserAccess.Locate('TokenHash', FTokenHash, []);
  if not Result then
    Exit;

  // Delete the hash info from our DB. Ideally, instead of deleting it, it should just be flagged
  // as "inactive" or "invalid"
  with cdsUserAccess do begin
    Delete;
    SaveToFile(FCDSFileName, dfXMLUTF8);
  end;
end;

function TIWUserSession.HasTokenHash(out aTokenHash: string): Boolean;
begin
  // Checks if there is a cookie in the request which contains our access token hash value
  aTokenHash := WebApplication.Request.GetCookieValue(AccessCookieName);
  Result := aTokenHash <> '';
end;

procedure TIWUserSession.SaveAccessCookie(const aTokenHash: string);
var
  cookieExpireTime: TDateTime;
begin
  // this cookie will be valid for 60 days
  cookieExpireTime := Now + 60;
  // add the cookie to our response.
  // Note that is is marked as HttpOnly (can't be read/manipulated by JavaScript code) and Secure (will be sent only over an HTTPS connection)
  WebApplication.Response.Cookies.AddCookie(AccessCookieName, aTokenHash, WebApplication.CookiePath, cookieExpireTime, {aHttpOnly=}True, {aSecure=}False);
end;

procedure TIWUserSession.RemoveAccessCokie;
begin
  // delete our access cookie from the user browser. This will effectively force the user
  // to login again using one of the OAuth APIs
  WebApplication.Response.Cookies.RemoveCookie(AccessCookieName, WebApplication.CookiePath);
end;

procedure TIWUserSession.Logoff;
begin
  IsLoggedIn := False;
end;

procedure TIWUserSession.SetIsLoggedIn(Value: Boolean);
begin
  if Value <> FIsLoggedIn then begin
    FIsLoggedIn := Value;
  end;
  if not FIsLoggedIn then begin
    DeleteTokenInfo;
    RemoveAccessCokie;
  end;
end;

end.
