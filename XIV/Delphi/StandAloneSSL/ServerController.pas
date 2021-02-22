unit ServerController;
{PUBDIST}

interface

uses
  SysUtils, Classes, IWServerControllerBase, HTTPApp, InServerIOHandler;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseAfterCreateIOHandler(
      IOHandler: TInServerIOHandler);
  private
  public
  end;

implementation
{$R *.dfm}

uses
  IWInit, InSSLOpenSSL;

procedure TIWServerController.IWServerControllerBaseAfterCreateIOHandler(
  IOHandler: TInServerIOHandler);
begin
  //ECDHE-RSA-RC4-SHA:RC4+SHA1+RSA
  //RC4-SHA:HIGH:!ADH
  TInServerIOHandlerSSLOpenSSL(IOHandler).SSLOptions.CipherList :=  'ECDHE-RSA-RC4-SHA:RC4+SHA1+RSA' ;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

 
