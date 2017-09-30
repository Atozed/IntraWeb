unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, DB, DBClient;

type
  TIWUserSession = class(TIWUserSessionBase)
    dsrcMain: TDataSource;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1SpeciesNo: TFloatField;
    ClientDataSet1Notes: TMemoField;
    ClientDataSet1Length_In: TFloatField;
    ClientDataSet1Lengthcm: TFloatField;
    ClientDataSet1SpeciesName: TStringField;
    ClientDataSet1Common_Name: TStringField;
    ClientDataSet1Category: TStringField;
    ClientDataSet1Graphic: TGraphicField;
    procedure IWUserSessionBaseCreate(Sender: TObject);
    procedure IWUserSessionBaseDestroy(Sender: TObject);
  public
    procedure GoFish(const ASpeciesNo: integer);
    procedure MovePage(const APageSize: integer);
    procedure SortBy(const AFieldname: string);
  end;

implementation

{$R *.dfm}

procedure TIWUserSession.GoFish(const ASpeciesNo: integer);
begin
  ClientDataSet1.Locate('Species No', ASpeciesNo, []);
end;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  ClientDataSet1.LoadFromFile('..\FishFact\biolife.cds');
end;

procedure TIWUserSession.MovePage(const APageSize: integer);
begin
  ClientDataSet1.MoveBy(APageSize);
end;

procedure TIWUserSession.SortBy(const AFieldname: string);
var
  LSpeciesNo: integer;
begin
  LSpeciesNo := Trunc(ClientDataSet1SpeciesNo.Value);
  ClientDataSet1.Close; try
    ClientDataSet1.IndexFieldNames := AFieldname;
  finally ClientDataSet1.LoadFromFile('..\FishFact\biolife.cds'); end;
  GoFish(LSpeciesNo);
end;

procedure TIWUserSession.IWUserSessionBaseDestroy(Sender: TObject);
begin
  ClientDataSet1.Close;
end;

end.
