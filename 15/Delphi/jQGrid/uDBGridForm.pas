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
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWjQDBGrid1: TIWjQDBGrid;
    IWButton3: TIWButton;
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWText1: TIWText;
    IWButton6: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWjQDBGrid1AsyncLinkClick(Sender: TObject;
      EventParams: TStringList; const RowID: string; const Row, Col: Integer);
    procedure IWjQDBGrid1AsyncDblClickRow(Sender: TObject;
      EventParams: TStringList; const RowID: string; const Row, Col: Integer);
    procedure IWjQDBGrid1AsyncSelectRow(Sender: TObject;
      EventParams: TStringList; const RowID: string);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton5AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton6AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
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

procedure TDBGridForm.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  Release;
end;

procedure TDBGridForm.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWjQDBGrid1.HideColumn('Continent');
  // I could also use the index of the column:
  //IWjQDBGrid1.HideColumn(1);
end;

procedure TDBGridForm.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWjQDBGrid1.ShowColumn('Continent');
  // I could also use the index of the column:
  //IWjQDBGrid1.ShowColumn(1);
end;

procedure TDBGridForm.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWjQDBGrid1.RefreshData;
end;

procedure TDBGridForm.IWButton5AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWjQDBGrid1.ClearGridData;
end;

procedure TDBGridForm.IWjQDBGrid1AsyncDblClickRow(Sender: TObject;
  EventParams: TStringList; const RowID: string; const Row, Col: Integer);
begin
  Log('AsyncDblClickRow: RowId = ' + RowID + ', Row: ' + IntToStr(Row) + ', ' + IntToStr(Col));
end;

procedure TDBGridForm.IWjQDBGrid1AsyncLinkClick(Sender: TObject;
  EventParams: TStringList; const RowID: string; const Row, Col: Integer);
begin
  Log('Link clicked: RowId = ' + RowID);
end;

procedure TDBGridForm.IWjQDBGrid1AsyncSelectRow(Sender: TObject;
  EventParams: TStringList; const RowID: string);
var
  LRowIsSelected: Boolean;
begin
  LRowIsSelected := IWjQDBGrid1.RowSelectedStatus;
  Log('AsyncSelectRow: RowId = ' + RowID + ', Row is selected: ' + BoolToStr(LRowIsSelected, True));
end;

procedure TDBGridForm.Log(const s: string);
begin
  IWMemo1.Lines.Insert(0, s);
end;

procedure TDBGridForm.IWButton6AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  ClientDataSet1.Edit;
  ClientDataSet1.FieldByName('Continent').AsString := 'abcd';
  ClientDataSet1.Post;
end;

end.
