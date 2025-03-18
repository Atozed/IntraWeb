unit uWorkerThread;

interface

uses
  SysUtils, Classes, IW.Common.Threads, ADODB;

type
  TWorkerThread = class(TIWTimedThread)
  strict private
    FConnection: TADOConnection;
    FCurrentDay: TDateTime;
    FExecutedToday: Boolean;
    FExecutionTime: TDateTime;
  protected
    procedure DoExecute; override;
  public
    constructor Create(const AName: string; AExecutionTime: TDateTime; ACheckInterval: Integer); reintroduce; overload;
    destructor Destroy; override;
  end;

implementation

uses
  ActiveX, IW.Common.SysTools, IW.Common.AppInfo, uDBBackup, DateUtils;

const
  DBCON_STRING = 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source="%s";Mode=Share Deny None;';
  BACKUP_DIR = 'Backup\';

constructor TWorkerThread.Create(const AName: string; AExecutionTime: TDateTime; ACheckInterval: Integer);
begin
  inherited Create(AName, ACheckInterval);

  FExecutionTime := Frac(AExecutionTime); // just the time part
  // we use an exclusive, non shared, database connection inside the thread
  FConnection := TADOConnection.Create(nil);
  FConnection.LoginPrompt := False;
  FConnection.ConnectionString := Format(DBCON_STRING, [TIWAppInfo.GetAppPath + 'DB\Northwind.mdb']);
end;

destructor TWorkerThread.Destroy;
begin
  FreeAndNil(FConnection);
  inherited;
end;

procedure TWorkerThread.DoExecute;
var
  dbBackup: TDBBackup;
  curDay: TDateTime;
begin
  try
    curDay := Trunc(SysUtils.Date);  // just the date part
    if curDay > FCurrentDay then     // when the day changes we reset the FExecutedToday flag
    begin
      FCurrentDay := curDay;
      FExecutedToday := False;
    end;

    // check if we need to execute the task (DB backup) today
    if not FExecutedToday and (Frac(SysUtils.Date) >= FExecutionTime) then
    begin
      CoInitialize(nil);  // ADO in threads requires this
      dbBackup := TDBBackup.Create;
      try
        dbBackup.ExecuteBackup(FConnection, TIWAppInfo.GetAppPath + BACKUP_DIR);
        FExecutedToday := True;
      finally
        dbBackup.Free;
        CoUninitialize;
      end;
    end;
  except
    on E:Exception do
    begin
      // Log any error that occurs inside this thread
      LogFileAppend('Error while executing ' + Self.FName + ': ' + E.Message);
    end;
  end;
end;

end.
