unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser,
  uWorkerThread;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseCreate(Sender: TObject);
    procedure IWServerControllerBaseDestroy(Sender: TObject);
  private
    FWorkerThread: TWorkerThread;
  public

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

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
begin
  // create the worker thread. It will run at each 2 seconds (2000 milliseconds)
  FWorkerThread := TWorkerThread.Create('Worker Thread', 2000);
  // start the worker thread
  FWorkerThread.Start;
end;

procedure TIWServerController.IWServerControllerBaseDestroy(Sender: TObject);
begin
  // finish the worker thread. The thread will destroy itself when finished
  FWorkerThread.Finish;
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

initialization
  TIWServerController.SetServerControllerClass;
  Randomize;

end.

