unit Unit53;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGrids, IWDBGrids, Datasnap.DBClient, IWCompEdit, IWDBStdCtrls,
  IWCompCheckbox;

type
  TIWForm53 = class(TIWAppForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    IWDBGrid1: TIWDBGrid;
    ClientDataSet1Field1: TStringField;
    ClientDataSet1Field2: TStringField;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  private
    procedure CreateSampleData;
    function GetCellControl(ARow, ACol: Integer): TIWCustomControl;
  public
  end;

implementation

{$R *.dfm}


{ TIWForm53 }

procedure TIWForm53.CreateSampleData;
begin
  with ClientDataSet1 do begin
    CreateDataset;
    Append;
    FieldByName('Field1').AsString := 'Field 1 - Row 1';
    FieldByName('Field2').AsString := 'Field 2 - Row 1';
    Post;
    Append;
    FieldByName('Field1').AsString := 'Field 1 - Row 2';
    FieldByName('Field2').AsString := 'Field 2 - Row 2';
    Post;
  end;
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

procedure TIWForm53.IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
var
  CB: TIWCheckBox;
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
