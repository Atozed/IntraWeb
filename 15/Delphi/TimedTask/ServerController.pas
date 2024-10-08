unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply, uWorkerThread;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseConfig(Sender: TObject);
    procedure IWServerControllerBaseDestroy(Sender: TObject);
  private
    { Private declarations }
    FWorkerThread: TWorkerThread;
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

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
var
  BackupTime: TDateTime;
begin
  BackupTime := EncodeTime(0, 15, 0, 0);
  // Create our worker thread and start it. Executes the backup at 00:15 every day. Check each 5 minutes.
  FWorkerThread := TWorkerThread.Create('DB Backup Thread', BackupTime, 300000);
  FWorkerThread.Start;
end;

procedure TIWServerController.IWServerControllerBaseDestroy(Sender: TObject);
begin
  // Terminate the worker thread
  FWorkerThread.Finish;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

