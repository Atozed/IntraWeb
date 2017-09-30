unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm, IWHTTPServer, InServerIOHandler,
  TlsUtils, Tls, TlsClass, TlsConst,
  SecUtils, TlsInternalServer, MpX509, SsCertMgr;

type
  TIWServerController = class(TIWServerControllerBase)
    X509CertificateAuthority1: TX509CertificateAuthority;
    SimpleTLSInternalServer1: TSimpleTLSInternalServer;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure SimpleTLSInternalServer1Password(Sender: TObject;
      Password: ISecretKey);
    procedure X509CertificateAuthority1Password(Sender: TObject;
      Password: ISecretKey);
    procedure SimpleTLSInternalServer1TLSRenegotiate(Sender: TObject;
      Client: TCustomTLS_ContentLayer; const SessionID: TSessionID;
      var Allow: Boolean);
    procedure SimpleTLSInternalServer1TLSOutgoingAlert(Sender: TObject;
      Client: TCustomTLS_ContentLayer; var Fatal: Boolean;
      AlertCode: Integer);
    procedure SimpleTLSInternalServer1TLSIncomingAlert(Sender: TObject;
      Client: TCustomTLS_ContentLayer; var Fatal: Boolean;
      AlertCode: Integer);
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


  end;

// Procs
  function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  IWInit, SsTLSIn60IOHandler;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TUserSession.Create(nil);
end;



procedure TIWServerController.SimpleTLSInternalServer1Password(
  Sender: TObject; Password: ISecretKey);
begin
  Password.SetLength(3);
  Password.SetKeyStrAt('abc',0);
end;

procedure TIWServerController.X509CertificateAuthority1Password(
  Sender: TObject; Password: ISecretKey);
begin
  Password.SetLength(3);
  Password.SetKeyStrAt('abc',0);
end;

procedure TIWServerController.SimpleTLSInternalServer1TLSRenegotiate(
  Sender: TObject; Client: TCustomTLS_ContentLayer;
  const SessionID: TSessionID; var Allow: Boolean);
begin
  SimpleTLSInternalServer1.FindTLSSession(SessionID,Client);
  Allow := Client = nil;
end;

procedure TIWServerController.SimpleTLSInternalServer1TLSOutgoingAlert(
  Sender: TObject; Client: TCustomTLS_ContentLayer; var Fatal: Boolean;
  AlertCode: Integer);
begin
  if Fatal and (AlertCode <> 0) then
//    raise Exception.Create(TlsConst.AlertMsg(AlertCode));
end;

procedure TIWServerController.SimpleTLSInternalServer1TLSIncomingAlert(
  Sender: TObject; Client: TCustomTLS_ContentLayer; var Fatal: Boolean;
  AlertCode: Integer);
begin
  if Fatal and (AlertCode <> 0) then
    if Client.Active then
//      raise Exception.Create(TlsConst.AlertMsg(AlertCode));
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

