unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Other, IW.Browser.Browser,
  IW.HTTP.Request, IW.HTTP.Reply, InSSLOpenSSL,
  InServerIOHandler, IdSSLOpenSSL;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseBrowserCheck(aSession: TIWApplication; var rBrowser: TBrowser);
    procedure IWServerControllerBaseAfterCreateIOHandler(IOHandler: TInServerIOHandler);
    procedure IWServerControllerBaseConfig(Sender: TObject);
  private

  public
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal, IW.Browser.InternetExplorer, IW.Browser.Safari, IW.Browser.Chrome,
  IW.Browser.Firefox, IniFiles, IW.Common.AppInfo;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseAfterCreateIOHandler(
  IOHandler: TInServerIOHandler);
begin
//AES128-GCM-SHA256:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-RC4-SHA:ECDHE-RSA-AES128-SHA:RC4:HIGH:!MD5:!aNULL:!EDH
//  TInServerIOHandlerSSLOpenSSL(IOHandler).SSLOptions.CipherList := 'RC4+SHA1+RSA';
//  TIdServerIOHandlerSSLOpenSSL(IOHandler).SSLOptions.SSLVersions := [sslvSSLv3, sslvTLSv1];
end;

procedure TIWServerController.IWServerControllerBaseBrowserCheck(aSession: TIWApplication;
  var rBrowser: TBrowser);
//var
//  MinVersion: Single;
begin
//  MinVersion := rBrowser.MinSupportedVersion;
//  rBrowser := TInternetExplorer.Create(MinVersion);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
var
  IniFile: TIniFile;
  xCipherList: string;
  xSSLVersion: string;
begin
  IniFile := TIniFile.Create(TIWAppInfo.GetAppPath + 'config.ini');
  try
    xCipherList := IniFile.ReadString('SSL', 'CipherList', '');
    if xCipherList <> '' then begin
      Self.SSLOptions.CipherList := xCipherList;
    end;
    xSSLVersion := IniFile.ReadString('SSL', 'SSLVersion', '');
    if xSSLVersion = 'TLSv12' then begin
      Self.SSLOptions.SSLVersion := TLSv12;
    end else
    if xSSLVersion = 'SSLv3' then begin
      Self.SSLOptions.SSLVersion := SSLv3;
    end;
  finally
    IniFile.Free;
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

