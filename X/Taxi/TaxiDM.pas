unit TaxiDM;

interface

uses
  SysUtils, Classes, DB, DBISAMTb;

type
  TTaxiDataModule = class(TDataModule)
    DB: TDBISAMDatabase;
    tblDriver: TDBISAMTable;
    dsDriver: TDataSource;
    dsClient: TDataSource;
    tblClient: TDBISAMTable;
    DBISAMSession: TDBISAMSession;
    qryOrdersByClient: TDBISAMQuery;
    dsOrdersByClient: TDataSource;
    tblTaxiOrder: TDBISAMTable;
    dsTaxiOrder: TDataSource;
    tblTaxiOrderTAXI_ORDER_ID: TAutoIncField;
    tblTaxiOrderDRIVER_ID: TIntegerField;
    tblTaxiOrderCLIENT_ID: TIntegerField;
    tblTaxiOrderADDRESS: TStringField;
    tblTaxiOrderPRICE: TIntegerField;
    tblTaxiOrderORDER_DATE: TDateField;
    tblTaxiOrderORDER_TIME: TTimeField;
    qryOrdersByDriver: TDBISAMQuery;
    dsOrdersByDriver: TDataSource;
    qryGetDriverByTurn: TDBISAMQuery;
    tblTaxiOrderREFUSED: TStringField;
    tblTaxiOrderCOMPLETED: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure tblClientBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetNextID(ATableName: String): Integer;
    function GetPassword(ATableName, AName: String): String;
    function GetPersonParam(ATableName, AFieldName, ANameValue: String): String;
    procedure GetOrdersByClient(CLIENT_ID: Integer; AOrders: TStringList);
    function ChooseAvailableDriver: Integer;
  end;

// Procs
  function TaxiDataModule: TTaxiDataModule;

implementation

uses ServerController, UserSessionUnit,
     IWServer, IWInit;

{$R *.dfm}

function TaxiDataModule: TTaxiDataModule;
begin
  Result := TIWUserSession(WebApplication.Data).TaxiDataModule;
end;

procedure TTaxiDataModule.DataModuleCreate(Sender: TObject);
begin
  DB.Connected:= true;
  DBISAMSession.Active:= true;
  tblDriver.Open;
  tblClient.Open;
  tblTaxiOrder.Open;
end;

function TTaxiDataModule.GetNextID(ATableName: String): Integer;
begin
  with TDBISAMQuery.Create(Self) do
  begin
    try
      DataBaseName:= DB.DataBaseName;
      SessionName:= DB.SessionName;
      SQL.Text:= 'SELECT MAX('+ATableName+'_ID) FROM '+ATableName;
      Open;
      result:= Fields[0].AsInteger + 1;
      Close;
    finally
      Free;
    end;
  end;
end;

function TTaxiDataModule.GetPassword(ATableName, AName: String): String;
begin
  result:= GetPersonParam(ATableName, 'PASSWORD', AName);
end;

function TTaxiDataModule.GetPersonParam(ATableName, AFieldName, ANameValue: String): String;
begin
  with TDBISAMQuery.Create(Self) do
  begin
    try
      DataBaseName:= DB.DataBaseName;
      SessionName:= DB.SessionName;
      SQL.Text:= 'SELECT ' + AFieldName + ' FROM ' + ATableName +
                 ' WHERE NAME=''' + ANameValue + '''';
      Open;
      result:= Fields[0].AsString;
      Close;
    finally
      Free;
    end;
  end;
end;

function TTaxiDataModule.ChooseAvailableDriver: Integer;
begin
  qryGetDriverByTurn.Close;
  qryGetDriverByTurn.ParamByName('DATE').AsDate:= Date;
  qryGetDriverByTurn.Open;
  
  if qryGetDriverByTurn.RecordCount > 0 then
  begin
    result:= qryGetDriverByTurn.FieldByName('DRIVER_ID').AsInteger;
  end else
  begin
    result:= 0;
  end;
end;

procedure TTaxiDataModule.GetOrdersByClient(CLIENT_ID: Integer; AOrders: TStringList);
begin
end;

procedure TTaxiDataModule.tblClientBeforePost(DataSet: TDataSet);
begin
{
  if DataSet.State in [dsEdit,dsInsert] then begin
    DataSet.FieldByName('CLIENT_ID').AsInteger:= GetNextID('CLIENT');
  end;
  }
end;

end.
