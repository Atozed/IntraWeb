unit FDatamodule;

interface

uses
  Classes,
  DB, DBClient,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  SysUtils;

type
  TFeaturesDM = class(TDataModule)
    dsetMaster: TClientDataSet;
    dsetOrder: TClientDataSet;
    dsetParts: TClientDataSet;
    dsrcMaster: TDataSource;
    dsrcOrder: TDataSource;
    dsrcParts: TDataSource;
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
 
