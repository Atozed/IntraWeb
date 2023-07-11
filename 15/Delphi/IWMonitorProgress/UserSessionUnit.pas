unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, uWorkerThread;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
    { Private declarations }
    FThread: TWorkerThread;
    procedure DoOnThreadTerminate(Sender: TObject);
  public
    { Public declarations }
    procedure StartWorkerThread;
    procedure TerminateWorkerThread;
  end;

implementation

{$R *.dfm}

procedure TIWUserSession.StartWorkerThread;
begin
  if not Assigned(FThread) then
  begin
    FThread := TWorkerThread.Create('MyWorkerThread', nil);
    FThread.Session := Self.WebApplication;
    FThread.OnTerminate := Self.DoOnThreadTerminate;
    FThread.Start;
  end;
end;

procedure TIWUserSession.TerminateWorkerThread;
begin
  if Assigned(FThread) and not FThread.Terminated then
  begin
    FThread.Terminate;
  end;
  FThread := nil;
end;

procedure TIWUserSession.DoOnThreadTerminate(Sender: TObject);
begin
  FThread := nil;
end;

end.
