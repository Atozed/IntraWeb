unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply, IWAutherBase, IWAutherEvent;

type
  TIWServerController = class(TIWServerControllerBase)
    IWAutherEvent1: TIWAutherEvent;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWAutherEvent1GetHA1(Sender: TObject; const aUsername: string;
      var aSecret: string);

  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

{ TIWServerController }

procedure TIWServerController.IWAutherEvent1GetHA1(Sender: TObject;
  const aUsername: string; var aSecret: string);
begin
  // To login successfuly you need to use these credentials when prompted by the browser (case sensitive, of course):

  // User name: IntraWeb
  // Password: Rocks

  // aSecret parameter should be provided by the application.
  // It is the MD5 hash of <UserName> + ':' + <Application Name> + ':' + <User Password>, i.e.
  // IntraWeb:DigestAuthDemo:Rocks
  // You can calculate MD5 hashes online (e.g. https://www.md5.cz/ or https://www.md5hashgenerator.com/)

  // This also means that in your password hash repository (an ini/config file, a database, etc)
  // you need to keep the user name and the hash of the <UserName> + ':' + <Application Name> + ':' + <User Password>
  // Calculated with MD5 algorithm. You can use CalculateMD5() functions in IW.Common.MD5
  // In our example we just hardcode the hash, for simplicity:

  if aUserName = 'IntraWeb' then
    aSecret := 'b23aff757db5204f2235d13070754a4d';
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

