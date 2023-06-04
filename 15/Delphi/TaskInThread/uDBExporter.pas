unit uDBExporter;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDBExporter = class
  private
    procedure SaveDataSetToXML(DataSet: TDataSet; const aFileName: string);
  public
    procedure ExportCustomers(aConnection: TADOConnection; const aDirName: string);
  end;

implementation

uses
  DBClient, Provider;

procedure TDBExporter.SaveDataSetToXML(DataSet: TDataSet; const aFileName: string);
var
  Provider: TDataSetProvider;
  ClientDataSet: TClientDataSet;
begin
  Provider := TDataSetProvider.Create(nil);
  try
    Provider.DataSet := DataSet;
    ClientDataSet := TClientDataSet.Create(nil);
    try
      ClientDataSet.SetProvider(Provider);
      ClientDataSet.Open;
      ClientDataSet.SaveToFile(aFileName, dfXML);
    finally
      ClientDataSet.Free;
    end;
  finally
    Provider.Free;
  end;
end;

// This method exports all customers from our "Customers" table into a XML compatible with TClientDataSet format
procedure TDBExporter.ExportCustomers(aConnection: TADOConnection; const aDirName: string);
var
  qry: TADOQuery;
begin
  if not ForceDirectories(aDirName) then
    raise Exception.Create('Could not create output directory');

  qry := TADOQuery.Create(nil);
  try
    qry.Connection := aConnection;
    qry.SQL.Text := 'SELECT * FROM customers';
    SaveDataSetToXML(qry, IncludeTrailingPathDelimiter(aDirName) + 'Customers.xml');
  finally
    qry.Free;
  end;
end;

end.
