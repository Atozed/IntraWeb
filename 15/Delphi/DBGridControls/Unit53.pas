unit Unit53;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGrids, IWDBGrids, Datasnap.DBClient, IWCompEdit, IWDBStdCtrls,
  IWCompCheckbox, IWCompButton, IWCompLabel;

type
  TIWForm53 = class(TIWAppForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    IWDBGrid1: TIWDBGrid;
    ClientDataSet1Field1: TStringField;
    ClientDataSet1Field2: TStringField;
    ClientDataSet1ActionField: TStringField;
    ClientDataSet1Id: TIntegerField;
    IWLabelEx1: TIWLabelEx;
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWDBGrid1Columns3AsyncClick(Sender: TObject; EventParams:
        TStringList; const AData: string);
    procedure IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  private
    procedure CreateSampleData;
    function GetCellControl(ARow, ACol: Integer): TIWCustomControl;
  public
  end;

implementation

{$R *.dfm}

// Please also check form's ExtraHeader property, which contains some styles applied to
// grid and buttons, and also FontAwesome link to show image in the label

{ TIWForm53 }

procedure TIWForm53.CreateSampleData;
begin
  with ClientDataSet1 do begin
    CreateDataset;
    Append;
    FieldByName('ID').AsInteger := 1;
    FieldByName('SKU').AsString := 'WM-1001';
    FieldByName('Desc').AsString := 'Wireless Mouse';
    Post;
    Append;
    FieldByName('ID').AsInteger := 2;
    FieldByName('SKU').AsString := 'BH-2002';
    FieldByName('Desc').AsString := 'Bluetooth Headphones';
    Post;
    Append;
    FieldByName('ID').AsInteger := 3;
    FieldByName('SKU').AsString := 'LS-3044';
    FieldByName('Desc').AsString := 'Laptop Stand';
    Post;
  end;
end;

// Action field is a calculated field
procedure TIWForm53.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Action').AsString := 'Edit|Delete';
end;

function TIWForm53.GetCellControl(ARow, ACol: Integer): TIWCustomControl;
var
  aName: string;
begin
  aName := Self.Name + 'CheckBox' + IntToStr(ARow);
  // try to find an already existing IWCheckBox. The parent of all CheckBoxes is the IWForm
  Result := Self.FindComponent(aName) as TIWCustomControl;
  // If not found, create one
  if Result = nil then begin
    Result := TIWCheckBox.Create(Self);
    // set all the properties
    with TIWCheckBox(Result) do begin
      Name := aName;
      Caption := '';
      Tag := ARow;
    end;
  end;
end;

procedure TIWForm53.IWAppFormCreate(Sender: TObject);
begin
  CreateSampleData;
end;

procedure TIWForm53.IWDBGrid1Columns3AsyncClick(Sender: TObject; EventParams:
    TStringList; const AData: string);
var
  LCol: Integer;
  LId: Integer;
  LAction: string;
begin
  LCol := StrToIntDef(EventParams.Values['ColIndex'], -1);
  LId := StrToIntDef(EventParams.Values['Id'], -1);
  LAction := EventParams.Values['Action'];
  WebApplication.ShowMessage('Column async click event: Column: ' + IntToStr(LCol) +  ', Id: ' + IntToStr(LId) + ', Action: ' + LAction);
end;

procedure TIWForm53.IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  if ARow > 0 then begin
    if AColumn = 0 then begin
      if not Assigned(ACell.Control) then begin
        ACell.Control := GetCellControl(ARow, AColumn);
      end;
    end;
  end;
end;

initialization
  TIWForm53.SetAsMainForm;

end.
