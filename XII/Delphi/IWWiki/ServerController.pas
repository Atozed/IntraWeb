unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IWAuther, IWAutherEvent,
  IWAutherINI, IWTypes,
  IW.Browser.Browser,
  IW.Browser.Other,
  IW.Browser.InternetExplorer,
  IW.Browser.Safari,
  IW.Browser.Chrome,
  IW.Browser.Firefox;

type
  TIWServerController = class(TIWServerControllerBase)
    IWAutherINI: TIWAutherINI;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseSessionTag(aSession: TIWApplication;
      const aName: string; aParams: TStrings; aOutput: TStringStream);
    procedure IWAutherINIAuthenticate(aAuthResult: Boolean);
    procedure IWServerControllerBaseBrowserCheck(aSession: TIWApplication;
      var rBrowser: TBrowser);

  private
    
  public
  end;


  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, InURI, IWUtils, StrUtils;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWAutherINIAuthenticate(aAuthResult: Boolean);
begin
  WebApplication.Permissions.CanEditPages := aAuthResult;
  if aAuthResult then begin
    UserSession.LoadUser(WebApplication.AuthUser);
  end;
end;

procedure TIWServerController.IWServerControllerBaseBrowserCheck(
  aSession: TIWApplication; var rBrowser: TBrowser);
var
  MinVersion: Single;
begin
  if (rBrowser is TOther) then begin
    rBrowser.Free;
    // accept the unknown browser as Internet Explorer v10
    rBrowser := TInternetExplorer.Create(8);
  end
  // if is Safari, but older version
  else if (rBrowser is TSafari) and (not rBrowser.IsSupported) then begin
    MinVersion := rBrowser.MinSupportedVersion;
    rBrowser.Free;
    // we will create it as the minimum supported version
    rBrowser := TSafari.Create(MinVersion);
  end
  // if is Chrome, but older version
  else if (rBrowser is TChrome) and (not rBrowser.IsSupported) then begin
    MinVersion := rBrowser.MinSupportedVersion;
    rBrowser.Free;
    // we will create it as the minimum supported version
    rBrowser := TChrome.Create(MinVersion);
  end
  // if is Firefox, but older version
  else if (rBrowser is TFirefox) and (not rBrowser.IsSupported) then begin
    MinVersion := rBrowser.MinSupportedVersion;
    rBrowser.Free;
    // we will create it as the minimum supported version
    rBrowser := TFirefox.Create(MinVersion);
  end
  // if is IE, but older version
  else if (rBrowser is TInternetExplorer) and (not rBrowser.IsSupported) then begin
    MinVersion := rBrowser.MinSupportedVersion;
    rBrowser.Free;
    // we will create it as the minimum supported version
    rBrowser := TInternetExplorer.Create(MinVersion);
  end;
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;

procedure TIWServerController.IWServerControllerBaseSessionTag(aSession: TIWApplication;
  const aName: string; aParams: TStrings;  aOutput: TStringStream);

  function DocPath(WebApplication: TIWApplication): string;
  var
    xHost: string;
  begin
    // converts some encoded characteres like: %20 to ' ', etc...
    Result := TInURI.URLDecode(WebApplication.Request.PathInfo);
    xHost := WebApplication.Request.Host;
    if WebApplication.Request.ServerPort <> 80 then begin
      xHost := xHost + ':' + IntToStr(WebApplication.Request.ServerPort);
    end;
    Result := IWStringReplace(Result, 'http://' + xHost, '');
  end;

var
  xStr: string;
begin
  // not being used
  // edit doc link
  {
  if (aName = 'EditDocLink') then begin
    if Assigned(UserSession.CurrentUser) and (aSession.Request.PathInfo <> '') and (aSession.Permissions.CanEditPages) then begin
      aOutput.WriteString('<li><a href="/$/iwedit' + DocPath(aSession) +' ">Edit this Article</a></li>');
    end else begin
      aOutput.WriteString('');
    end;
  end;
  }
  // login link
  if aName = 'LoginLink' then begin
    if not Assigned(UserSession.CurrentUser) then begin
      aOutput.WriteString('<a href="/Login">Login</a>');
    end;
  end;
  // user info
  if aName = 'CurrentUser' then begin
    if Assigned(TIWUserSession(aSession.Data).CurrentUser) then begin
      aOutput.WriteString('Logged in as "' + TIWUserSession(aSession.Data).CurrentUser.FullName + '"') ;
    end;
  end;
  if Assigned(UserSession.CurrentUser) then begin

    xStr := Copy(aSession.Request.PathInfo, 0, LastDelimiter('/', aSession.Request.PathInfo) - 1);

    if aName = 'TopicOptions' then begin
      // Edit
      aOutput.WriteString('<a href="/EditTopic" class="options_link">[Edit]</a>');
      // Rename
      // do not allow rename for root folder
      if (LowerCase(aSession.Request.PathInfo) <> '/index.html') and (xStr <> '') then begin
        aOutput.WriteString('<a href="/RenameTopic" class="options_link"> / [Rename]</a>');
      end;
      // new
      aOutput.WriteString('<a href="/NewTopic" class="options_link"> / [New]</a>');
      // delete - disabled for now
      //
      //if (LowerCase(aSession.Request.PathInfo) <> '/index.html') then begin
      //  aOutput.WriteString('<a href="/DeleteTopic" class="options_link"> / [Delete]</a>');
      //end;
    end;
    if aName = 'ArticleOptions' then begin
      // edit
      aOutput.WriteString('<a href="/EditArticle" class="options_link">[Edit]</a>');
      // rename
      // do not allow rename index.html
      if (RightStr(aSession.Request.PathInfo, Length('/index.html')) <> '/index.html') then begin
        aOutput.WriteString('<a href="/RenameArticle" class="options_link"> / [Rename]</a>');
      end;
      // new
      aOutput.WriteString('<a href="/NewArticle" class="options_link"> / [New]</a>');
      // delete
      // do not allow delete index.html
      if (RightStr(aSession.Request.PathInfo, Length('/index.html')) <> '/index.html') then begin
        aOutput.WriteString('<a href="/DeleteArticle" class="options_link"> / [Delete]</a>');
      end;
    end;
  end;

end;

initialization
  TIWServerController.SetServerControllerClass;

end.

      // if RigthStr(aSession.Request.PathInfo, Lenght('/index.html')) <> '/index.html') then begin


