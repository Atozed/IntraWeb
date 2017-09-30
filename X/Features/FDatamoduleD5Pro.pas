unit FDatamoduleD5Pro;

interface

uses
  Classes,
  DB, DBTables,
  Forms,
  SysUtils;

type
  TFeaturesDM = class(TDataModule)
    dsetMaster: TTable;
    dsetOrder: TTable;
    dsetParts: TTable;
    dsrcMaster: TDataSource;
    dsrcOrder: TDataSource;
    dsrcParts: TDataSource;
    Session1: TSession;
  private
  public
  end;

// Procs
  function FeaturesDM: TFeaturesDM;

implementation
{$R *.dfm}

uses
  IWInit;

function FeaturesDM: TFeaturesDM;
begin
  Result := TFeaturesDM(WebApplication.Data);
end;

end.
 
