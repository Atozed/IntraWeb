unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseCreate(Sender: TObject);
    procedure IWServerControllerBaseDestroy(Sender: TObject);
    procedure IWServerControllerBaseConfig(Sender: TObject);
  private
    { Private declarations }
    FUserIds: TStringList;
    procedure AddSampleUsers;
  public
    { Public declarations }
    property UserIds: TStringList read FUserIds;
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal,
  IW.Common.SysTools,
  uUserList,  // sample data structure which takes care of user login
  IW.Content.Handlers, IW.Content.Base, IW.Content.Form;  // Content handler support

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

{ TIWServerController }

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
begin
  FUserIds := TStringList.Create;
end;

procedure TIWServerController.IWServerControllerBaseDestroy(Sender: TObject);
begin
  FUserIds.Free;
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);

  function _CreateContentHandler(const aFormClassName: string): TContentBase;
  begin
    Result := TContentForm.Create(aFormClassName);  // form class name is used instead of form class!
    Result.RequiresSession := True;
    Result.CanStartSession := True;
  end;

var
  contentHandler: TContentForm;
begin
  AddSampleUsers;

  THandlers.Add('', 'table1', _CreateContentHandler('TFrmView1'));
  THandlers.Add('', 'table2', _CreateContentHandler('TFrmView2'));
end;

procedure TIWServerController.AddSampleUsers;
var
  i: Integer;
  User: TUser;
begin
  // not using a critical section because this runs from the main thread, once.
  // If you modify this code, have this in mind!
  for i := 1 to 10 do
  begin
    User := TUser.Create;
    User.Id := NewGuidEncode64;   // unique ID for each user
    User.Name := 'User' + IntToStr(i);
    User.Pw := 'user' + IntToStr(i);

    TUserList.Instance.Add(User);
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

