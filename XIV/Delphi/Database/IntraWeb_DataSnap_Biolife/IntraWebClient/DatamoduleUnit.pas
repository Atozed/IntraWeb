unit DataModuleUnit;

interface

uses
  Forms,
  SysUtils, Classes, DBXMSSQL, FMTBcd, Provider, DB, SqlExpr, DBXDataSnap,
  DBXCommon, DBClient, DSConnect, IPPeerClient;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    sqlEmployees: TSQLDataSet;
    dspEmployees: TDataSetProvider;
  private
  public
  end;

  
implementation

{$R *.dfm}

end.
