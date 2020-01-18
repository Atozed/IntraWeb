unit uFrmMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompGrids,
  udmMain, DB, IWCompLabel, IWCompListbox, IWHTMLControls;

type
  TFrmMain = class(TIWAppForm)
    IWGrid1: TIWGrid;
    IWComboBox1: TIWComboBox;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    cbStyle: TIWComboBox;
    IWURL1: TIWURL;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWComboBox1Change(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure cbStyleChange(Sender: TObject);
  private
    Fdm: TdmMain;
    procedure PopulateFromDataSet(ds: TDataSet);
  public
    procedure PopulateCountry;
    procedure PopulateCustomer;
  end;

implementation

{$R *.dfm}

procedure TFrmMain.IWAppFormCreate(Sender: TObject);
begin
  // Use this (uncomment) if you want to use files from cdn
  //ContentFiles.Add('https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css');
  //ContentFiles.Add('https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js');

  // - OR - use these if you want to have files served locally by IntraWeb itself
  // In this case, you need to deploy both files inside wwwroot folder too
  ContentFiles.Add('jquery.dataTables.min.css');
  ContentFiles.Add('jquery.dataTables.min.js');

  Fdm := TdmMain.Create(Self);
  PopulateCountry;
end;

procedure TFrmMain.IWAppFormRender(Sender: TObject);
begin
  AddToInitProc('$("#TBLIWGRID1").DataTable();');
end;

procedure TFrmMain.PopulateFromDataSet(ds: TDataSet);
var
  i, LRow, FldCount: Integer;
begin
  IWGrid1.Clear;
  IWGrid1.ColumnCount := ds.FieldCount;
  IWGrid1.RowCount := ds.RecordCount + 1;
  ds.DisableControls;
  try
    ds.First;
    FldCount := ds.FieldCount;
    LRow := 0;
    for i := 0 to FldCount - 1 do
    begin
      IWGrid1.Cell[LRow, i].Text := ds.Fields[i].DisplayName;
    end;
    Inc(LRow);
    while not ds.Eof do
    begin
      for i := 0 to FldCount - 1 do
      begin
        IWGrid1.Cell[LRow, i].Text := ds.Fields[i].AsString;
      end;
      ds.Next;
      Inc(LRow);
    end;
  finally
    ds.EnableControls;
  end;
end;

procedure TFrmMain.PopulateCountry;
begin
  IWGrid1.Caption := 'Countries';
  PopulateFromDataSet(Fdm.cdsCountry);
end;

procedure TFrmMain.PopulateCustomer;
begin
  IWGrid1.Caption := 'Customers';
  PopulateFromDataSet(Fdm.cdsCustomer);
end;

procedure TFrmMain.IWComboBox1Change(Sender: TObject);
begin
  case IWComboBox1.ItemIndex of
    0: PopulateCountry;
    1: PopulateCustomer;
  else
    begin
      IWGrid1.Clear;
      IWGrid1.Caption := '< No Data >';
      IWGrid1.RowCount := 1;
      IWGrid1.ColumnCount := 1;
    end;
  end;
end;

procedure TFrmMain.cbStyleChange(Sender: TObject);
begin
  IWGrid1.InnerTableCss := LowerCase(cbStyle.SelectedValue);
end;

initialization
  TFrmMain.SetAsMainForm;

end.
