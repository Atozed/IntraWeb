unit uCustomIOHandler;

interface

uses
  SysUtils, Classes, InCustomHttpServer, InServerIOHandler, IW.Server.HTTPIndy,
  InSSLOpenSSL;

type
 TIWIOHandlerClass=class(TInServerIOHandlerSSLOpenSSL)
  private
    procedure DoGetPassoword(var VPassword: string);
  public
    procedure Init; override;
  end;

implementation

uses
  IWServerControllerBase, IW.Common.AppInfo;

{ TIWIOHandlerClass }
procedure TIWIOHandlerClass.Init;
var
  Path: string;
begin
  Path := TIWAppInfo.GetAppPath;
  with SSLOptions do begin
    CipherList := 'AES128-GCM-SHA256:ECDHE-RSA-AES128-SHA256:ECDHE-RSA-RC4-SHA:ECDHE-RSA-AES128-SHA:RC4:HIGH:!MD5:!aNULL:!EDH';
    SSLVersions := [sslvSSLv2, sslvSSLv23, sslvTLSv1,sslvTLSv1_1,sslvTLSv1_2];
    CertFile := Path + 'cert.pem';
    KeyFile := Path + 'key.pem';
    RootCertFile := Path + 'root.pem';
    OnGetPassword := DoGetPassoword;
  end;
  inherited;
end;

procedure TIWIOHandlerClass.DoGetPassoword(var VPassword: string);
begin
  VPassword := 'atozed';
end;

initialization
  THTTPServerIndy.RegisterIOHandlerClass(TIWIOHandlerClass);

end.
