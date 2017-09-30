unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IWTypes,
  IW.Browser.Browser,
  IW.Browser.SearchEngine,
  IW.Browser.Other,
  IW.Browser.InternetExplorer;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseBrowserCheck(aSession: TIWApplication;
      var rBrowser: TBrowser);
  private
    //
  public
    //
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IWException;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseBrowserCheck(aSession: TIWApplication; var rBrowser: TBrowser);

  const
    GoogleBotURL = 'Googlebot.html';
    YahooSlurpChinaURL = 'YSChina.html';
    GenericURL = 'SearchEngine.html';

  function GenerateForGoogleBot: TFileName;
  begin
    // generate the page for GoogleBot
    Result := GoogleBotURL;
    with TStringList.Create do begin
      Add('Hello Googlebot, welcome to my website');
      SaveToFile(ContentPath + Result);
      Free;
    end;
    Result := '/' + Result;
  end;

  function GenerateForYahooSlurpChina: TFileName;
  begin
    // generate the page for Yahoo! Slurp China
    Result := YahooSlurpChinaURL;
    with TStringList.Create do begin
      Add('Hello Yahoo! Slurp China, welcome to my website');
      SaveToFile(ContentPath + Result);
      Free;
    end;
    Result := '/' + Result;
  end;

  function GenerateGenericResults: TFileName;
  begin
    // generate generic results
    Result := GenericURL;
    with TStringList.Create do begin
      Add('Hello Search Engine, welcome to my website');
      SaveToFile(ContentPath + Result);
      Free;
    end;
    Result := '/' + Result;
  end;

begin
  // for a list of User Agents
  // * http://www.useragentstring.com/pages/useragentstring.php
  // -------------------------------------------------------------------------------------
  // * When a Search Engine interacts with your application, you can just send a
  //   plain HTML page or even generate pages on the fly with relevant content
  // * If your application is e-Commerce app, you can generate, for instance, a HTML
  //   page containing information about the Best-Selling products or some promotions, etc.
  // -------------------------------------------------------------------------------------
  // * For a Search Engine, you ALWAYS need to terminate the incoming session
  //   and redirect it
  // -------------------------------------------------------------------------------------
  // * How to test it? You can use FireFox and some add-on that fakes the Browser User Agent
  //   to test your application. This will make IW set the aBrowserType.Browser to brSearchEngine
  //   and you can check/optimize your Search Engine support
  //
  //   http://chrispederick.com/work/user-agent-switcher/
  // -------------------------------------------------------------------------------------
  if (rBrowser.ClassName = 'TSearchEngine') then begin
    // check if it is GoogleBot
    if (Pos(UpperCase('Googlebot'), UpperCase(aSession.Request.UserAgent)) > 0) and
       // needed to avoid loop
       (Pos(GoogleBotURL, aSession.Request.PathInfo) = 0) then begin
       aSession.TerminateAndRedirect(GenerateForGoogleBot);
    end else
    // check if it is Yahoo! Slurp China
    if (Pos(UpperCase('Yahoo! Slurp China'), UpperCase(aSession.Request.UserAgent)) > 0) and
       // needed to avoid loop
       (Pos(YahooSlurpChinaURL, aSession.Request.PathInfo) = 0) then begin
       aSession.TerminateAndRedirect(GenerateForYahooSlurpChina);
    end else begin
       // needed to avoid loop
       if (Pos(GenericURL, aSession.Request.PathInfo) = 0) then begin
         aSession.TerminateAndRedirect(GenerateGenericResults);
       end;
    end;
  end else begin
    // if is a unknown browser and
    if (rBrowser is TOther) then begin
      // if it is not MAXTHON
      if (Pos('MAXTHON', UpperCase(aSession.Request.UserAgent)) = 0 ) then begin
        // needed to avoid loop
        if (Pos('/UnsupportedBrowsers.html', aSession.Request.PathInfo) = 0) then begin
          // show our custom unsupported browser page
          aSession.TerminateAndRedirect('/UnsupportedBrowsers.html');
        end;
        // ----
        // raise an exception instead
        raise EDeviceNotSupported.Create('Your browser is not supported');
      end else begin
        // accept browser if MAXTHON only
        rBrowser.Free;
        // accept the unknown browser as Internet Explorer
        rBrowser := TInternetExplorer.CreateBrowser('10');
      end;
    end;
  end;

end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.

