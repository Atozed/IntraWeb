unit UserSessionUnit;
{
  This is a DataModule where you can add components or declare fields that are specific to
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface
uses
  IWUserSessionBase, SysUtils, Classes, DB, SqlExpr, DBXMSSQL, FMTBcd, DBClient,
  Provider, DSConnect, DBXDataSnap, DBXCommon, IPPeerClient;

type
  TIWUserSession = class(TIWUserSessionBase)
    cdsEmployees: TClientDataSet;
    dsEmployees: TDataSource;
    DSProviderConnection1: TDSProviderConnection;
    SQLConnection1: TSQLConnection;
    procedure IWUserSessionBaseCreate(Sender: TObject);
    procedure cdsEmployeesAfterPostOrDelete(DataSet: TDataSet);
    procedure cdsEmployeesReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError;
      UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
   DatamoduleUnit, ServerController;

{$DEFINE DATASNAP}
{$R *.dfm}

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
{$IFNDEF DATASNAP}
var
  MyDataModule: TDataModule1;
begin
  MyDataModule := LockDataModule;
  try
  CodeSite.Send(MyDataModule.
    cdsEmployees.SetProvider(MyDataModule.dspEmployees);
    cdsEmployees.Active := True; // Open
    cdsEmployees.SetProvider(nil);
  finally
    UnlockDataModule(MydataModule)
  end
{$ELSE}
begin
  cdsEmployees.RemoteServer := DSProviderConnection1;
  cdsEmployees.SetProvider(DSProviderConnection1);
  cdsEmployees.ProviderName := 'dspEmployees';//'dspEmployees';
  cdsEmployees.Active := True; // Open
  SQLConnection1.Connected := False; // Disconnect from DataSnap Server
{$ENDIF}
end;

procedure TIWUserSession.cdsEmployeesAfterPostOrDelete(DataSet: TDataSet);
{$IFNDEF DATASNAP}
var
  MyDataModule: TDataModule1;
begin
  MyDataModule := LockDataModule;
  try
    (DataSet as TClientDataSet).SetProvider(MyDataModule.dspEmployees);
    (DataSet as TClientDataSet).ApplyUpdates(0);
    (DataSet as TClientDataSet).SetProvider(nil);
  finally
    UnlockDataModule(MydataModule)
  end
{$ELSE}
begin
  (DataSet as TClientDataSet).ApplyUpdates(0);
  SQLConnection1.Connected := False; // Disconnect from DataSnap Server
{$ENDIF}
end;

procedure TIWUserSession.cdsEmployeesReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  //CodeSite.SendException(E);
end;

end.
