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
    FAuthenticated: Boolean;
  public
    { Public declarations }
    property Authenticated: Boolean read FAuthenticated;
    function CheckUser(const aUserName, aPassword: string): Boolean;
  end;

implementation

{$R *.dfm}

function TIWUserSession.CheckUser(const aUserName, aPassword: string): Boolean;
begin
  Result := FAuthenticated;
  if not Result then begin
    FAuthenticated := (aUserName = aPassword); // do your username/password validation here
    Result := FAuthenticated;
  end;
end;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  FAuthenticated := False;
end;

end.