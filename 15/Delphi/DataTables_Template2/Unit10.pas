unit Unit10;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Data.DB, Datasnap.DBClient;

type
  TMainForm = class(TIWAppForm)
    IWTemplateProcessorHTML: TIWTemplateProcessorHTML;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1Name: TWideStringField;
    ClientDataSet1Position: TWideStringField;
    ClientDataSet1Office: TWideStringField;
    ClientDataSet1Age: TIntegerField;
    ClientDataSet1Start_date: TDateTimeField;
    ClientDataSet1Salary: TFloatField;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormAsyncPageLoaded(Sender: TObject;
      EventParams: TStringList);
  private
    procedure GetRecords(aParams: TStrings; out aResult: String);
  public
  end;

implementation

{$R *.dfm}

uses
  System.JSON, System.Generics.Collections, IWJsonDataObjects;

// Use these 2 functions instead of the ones in IWDBCommon,
// if using version prior to 15.6.4.
function CheckDataSet(ADataSet: TDataSet; AMustBeActive: Boolean = True): Boolean;
begin
  Result := False;
  if ADataSet <> nil then begin
    Result := not (AMustBeActive) or ADataset.Active;
  end;
end;

function DataSetToDataTablesJson(ds: TDataSet; const aDraw: Integer = -1; const aFiltered: Integer = -1): string;
var
  JsonObject: TJsonObject;
  JsonDataArray, RecordArray: TJsonArray;
  FieldValue: string;
  I: Integer;
begin
  JsonObject := TJsonObject.Create;
  try
    if CheckDataSet(ds) then
    begin
      // Add the non-data fields
      JsonObject.I['recordsTotal'] := ds.RecordCount;
      if aDraw <> -1 then
        JsonObject.I['draw'] := aDraw;
      if aFiltered <> -1 then
        JsonObject.I['recordsFiltered'] := aFiltered;

      JsonDataArray := JsonObject.A['data'];
      ds.DisableControls;
      try
        ds.First;
        while not ds.Eof do
        begin
          RecordArray := JsonDataArray.AddArray;
          for I := 0 to ds.FieldCount - 1 do
          begin
            if not ds.Fields[I].Visible then
              Continue;
            FieldValue := ds.Fields[I].AsString;
            RecordArray.Add(FieldValue);
          end;
          ds.Next;
        end;
      finally
        ds.EnableControls;
      end;
    end else begin
      JsonObject.I['recordsTotal'] := 0;
    end;
    Result := JsonObject.ToJSON(False);
  finally
    JsonObject.Free;
  end;
end;

procedure TMainForm.GetRecords(aParams: TStrings; out aResult: String);
begin
  aResult := DataSetToDataTablesJson(ClientDataSet1);
end;

procedure TMainForm.IWAppFormAsyncPageLoaded(Sender: TObject;
  EventParams: TStringList);
var
  js: string;
begin
  js := 'var tableInstance = $("#mainDataTable").DataTable();' +
        'if (tableInstance) {' +
        '  tableInstance.ajax.url("/$/callback?callback=GetRecords").load();' +
        '}';
  ExecuteJS(js);
end;

procedure TMainForm.IWAppFormCreate(Sender: TObject);
var
  InitTableCode: string;
begin
  RegisterCallback('GetRecords', GetRecords);

  InitTableCode := 'var myTable = $("#mainDataTable").DataTable({' +
                     'language: {' +
                     '    search: "_INPUT_",' +
                     '    searchPlaceholder: "Search records"' +
                     '},' +
                     'responsive: true,' +
                     'pagingType: "simple_numbers",' +
                     'autoWidth: false,' +
                   '});';
  AddToInitProc(InitTableCode);
end;

initialization
  TMainForm.SetAsMainForm;

end.
