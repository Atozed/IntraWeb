unit uDBGridForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWjQGrid,
  IWCompTabControl, DB, DBClient, IWCompText, IWCompLabel, IWCompMemo,
  IWCompButton, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container;

type
  TDBGridForm = class(TIWAppForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Name: TStringField;
    ClientDataSet1Capital: TStringField;
    ClientDataSet1Continent: TStringField;
    ClientDataSet1Area: TFloatField;
    ClientDataSet1Population: TFloatField;
    IWjQDBGrid1: TIWjQDBGrid;
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    procedure IWjQDBGrid1AsyncLinkClick(Sender: TObject;
      EventParams: TStringList; const RowID: string; const Row, Col: Integer);
    procedure IWjQDBGrid1AsyncDblClickRow(Sender: TObject;
      EventParams: TStringList; const RowID: string; const Row, Col: Integer);
    procedure IWjQDBGrid1AsyncSelectRow(Sender: TObject;
      EventParams: TStringList; const RowID: string);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWjQDBGrid1AsyncBeforeEditCell(Sender: TObject; EventParams:
        TStringList; const RowID: string; const Row, Col: Integer; const AValue:
        string);
    procedure IWjQDBGrid1AsyncColumnResize(Sender: TObject; Col, Width: Integer;
        var Update: Boolean);
    procedure IWjQDBGrid1AsyncRightClickRow(Sender: TObject; EventParams:
        TStringList; const RowID: string; const Row, Col: Integer);
    procedure IWjQDBGrid1AsyncSelectCell(Sender: TObject; EventParams: TStringList;
        const RowID: string; const Col: Integer; const CellText: string);
    procedure IWjQDBGrid1RowClick(Sender: TObject; const RowID: string);
    procedure IWjQDBGrid1SaveCell(Sender: TObject; const RowID: string; ACol:
        Integer; const AColName: string; var AValue: string; var ASave: Boolean;
        var AErrorMessage: string);
  private
    procedure Log(const s: string);
  public
  end;

implementation

{$R *.dfm}

procedure TDBGridForm.IWAppFormCreate(Sender: TObject);
begin
  IWjQDBGrid1.DataSource := DataSource1;
end;

procedure TDBGridForm.IWjQDBGrid1AsyncBeforeEditCell(Sender: TObject;
    EventParams: TStringList; const RowID: string; const Row, Col: Integer;
    const AValue: string);
begin
  Log('OnAsyncBeforeEditCell: RowId = ' + RowID + ', Row = ' + IntToStr(Row) + ', Col = ' + IntToStr(Col) + ', Value = ' + AValue);
end;

procedure TDBGridForm.Log(const s: string);
begin
  IWMemo1.Lines.Insert(0, s);
end;

procedure TDBGridForm.IWjQDBGrid1AsyncDblClickRow(Sender: TObject;
  EventParams: TStringList; const RowID: string; const Row, Col: Integer);
begin
  Log('OnAsyncDblClickRow: RowId = ' + RowID + ', Row: ' + IntToStr(Row) + ', ' + IntToStr(Col));
end;

procedure TDBGridForm.IWjQDBGrid1AsyncLinkClick(Sender: TObject;
  EventParams: TStringList; const RowID: string; const Row, Col: Integer);
begin
  Log('OnAsyncLinkClick: RowId = ' + RowID + ', Row = ' + IntToStr(Row) + ', Col = ' + IntToStr(Col));
end;

procedure TDBGridForm.IWjQDBGrid1AsyncSelectRow(Sender: TObject;
  EventParams: TStringList; const RowID: string);
var
  LRowIsSelected: Boolean;
begin
  // Please notice that OnAsyncSelectRow and OnRowClick are mutually exclusive.
  // If OnAsyncSelectRow is assigned, OnRowClick won't trigger (they are basically the same event, so pick one)
  LRowIsSelected := IWjQDBGrid1.RowSelectedStatus;
  Log('OnAsyncSelectRow: RowId = ' + RowID + ', Row is selected: ' + BoolToStr(LRowIsSelected, True));
end;

procedure TDBGridForm.IWjQDBGrid1AsyncRightClickRow(Sender: TObject;
    EventParams: TStringList; const RowID: string; const Row, Col: Integer);
begin
  Log('OnAsyncRightClickRow: RowId = ' + RowID + ', Row = ' + IntToStr(Row) + ', Col = ' + IntToStr(Col));
end;

procedure TDBGridForm.IWjQDBGrid1RowClick(Sender: TObject; const RowID: string);
begin
  // Please notice that OnAsyncSelectRow and OnRowClick are mutually exclusive.
  // If OnAsyncSelectRow is assigned, OnRowClick won't trigger (they are basically the same event, so pick one)
  Log('OnRowClick: RowId = ' + RowID);
end;

procedure TDBGridForm.IWjQDBGrid1AsyncColumnResize(Sender: TObject; Col, Width:
    Integer; var Update: Boolean);
begin
  Log('OnAsyncColumnResize: Col = ' + IntToStr(Col) + ', Width = ' + IntToStr(Width));
end;

procedure TDBGridForm.IWjQDBGrid1AsyncSelectCell(Sender: TObject; EventParams:
    TStringList; const RowID: string; const Col: Integer; const CellText:
    string);
begin
  Log('OnAsyncSelectCell: RowId = ' + RowID + ', Col: ' + IntToStr(Col) + ', CellText = ' + CellText);
end;

procedure TDBGridForm.IWjQDBGrid1SaveCell(Sender: TObject; const RowID: string;
    ACol: Integer; const AColName: string; var AValue: string; var ASave:
    Boolean; var AErrorMessage: string);
begin
  Log('OnSaveCell: RowId = ' + RowID + '. Col = ' + IntToStr(ACol) + ', AValue = ' + AValue);
end;

initialization
  TDBGridForm.SetAsMainForm;

end.
