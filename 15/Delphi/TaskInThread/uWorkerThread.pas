unit uWorkerThread;

interface

uses
  SysUtils, Classes, IW.Common.Threads, ADODB;

type
  TWorkerThread = class(TIWTimedThread)
  strict private
    FConnection: TADOConnection;
  protected
    procedure DoExecute; override;
  public
    constructor Create(const AName: string; AInterval: Integer); override;
    destructor Destroy; override;
  end;

implementation

uses
  ActiveX, IW.Common.SysTools, IW.Common.AppInfo, uDBExporter;

const
  DBCON_STRING = 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source="%s";Mode=Share Deny None;';
  EXPORT_DIR = 'Export\';

constructor TWorkerThread.Create(const AName: string; AInterval: Integer);
begin
  inherited Create(AName, AInterval);

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
  dbExporter: TDBExporter;
begin
  try
    // Each time this runs, we will connect to the database (using our private/exclusive connection)
    // and call the TDBExporter.ExportCustomers method. This method will export
    // all customers in our Database to a XML file
    CoInitialize(nil);  // ADO in threads requires this
    FConnection.Connected := True;
    dbExporter := TDBExporter.Create;
    try
      dbExporter.ExportCustomers(FConnection, TIWAppInfo.GetAppPath + EXPORT_DIR);
    finally
      dbExporter.Free;
      FConnection.Connected := False;
      CoUninitialize;
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
