//
unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm, IW.Http.Request, IW.Http.Reply;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(aSession: TIWApplication);
    procedure IWServerControllerBaseAfterDispatch(Request: THttpRequest;
      aReply: THttpReply);
    procedure IWServerControllerBaseConfig(Sender: TObject);
    procedure IWServerControllerBaseBackButton(var VResyncInfo: TIWResyncInfo);
  private
    FCSPValue: string;
    FHPKPValue: string;
  public
  end;

  function IWServerController: TIWServerController;

implementation
{$R *.dfm}

uses
  IWInit, IWGlobal, FDatamodule;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(aSession: TIWApplication);
begin
  ASession.Data := TFeaturesDM.Create(ASession);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
var
  LServerList: string;
begin
  // Content Security Policy - CSP

  // you may add to the server list other domains, for instance, a google API resource:
  // LServerList := QuotedStr('self') + ' https://fonts.googleapis.com ';
  LServerList := QuotedStr('self') + ' ';
  FCSPValue := 'default-src ' + LServerList + '; ' +
               'script-src ' + LServerList + QuotedStr('unsafe-inline') + ' ' + QuotedStr('unsafe-eval') + '; ' +
               'style-src ' + LServerList + QuotedStr('unsafe-inline') + '; ' +
               'img-src ' + LServerList + ';';

  // HTTP Public Key Pinning - HPKP
  FHPKPValue := 'pin-sha256="F9BNFsxzgvmpLdIVPoFFJT8/5z/vMzSWRHB6yT7TOl8=";' +
                'pin-sha256="FHF7G0Dy2vqii/uXL3DaBhG+ikIaBD/U+c6271oRQPc=";' +
                'max-age=5184000; includeSubDomains;';
                // you may also include this line, but it is optional
                //'report-uri="https://www.yoursite.com/report"';
end;

procedure TIWServerController.IWServerControllerBaseAfterDispatch(
  Request: THttpRequest; aReply: THttpReply);
begin
  aReply.AddHeader('Content-Security-Policy', FCSPValue);
  aReply.AddHeader('Public-Key-Pins', FHPKPValue);
end;

procedure TIWServerController.IWServerControllerBaseBackButton(
  var VResyncInfo: TIWResyncInfo);
var
  s: string;
begin
  s := VResyncInfo.FormName;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.
