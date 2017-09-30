unit Main;

interface

uses
  IWAppForm, Classes, Controls, 
  IWExtCtrls, IWDBExtCtrls, IWDBStdCtrls, IWDBGrids, IWGrids,
  IWCompEdit, IWCompLabel, IWControl, IWCompMemo, IWBaseControl, DBClient,
  DB, Forms, IWContainer, IWRegion, IWVCLBaseControl, IWVCLBaseContainer,
  IWBaseHTMLControl, IWHTMLContainer, IWHTML40Container, IWCompButton;

type
  TformMain = class(TIWAppForm)
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
    IWRegion1: TIWRegion;
    IWDBImage1: TIWDBImage;
    IWDB3Navigator1: TIWDBNavigator;
    dgrdFish: TIWDBGrid;
    Label1: TIWLabel;
    Label2: TIWLabel;
    Label3: TIWLabel;
    Label4: TIWLabel;
    Label5: TIWLabel;
    Label6: TIWLabel;
    DBEdit1: TIWDBEdit;
    DBEdit2: TIWDBEdit;
    DBEdit3: TIWDBEdit;
    DBEdit4: TIWDBEdit;
    DBEdit5: TIWDBEdit;
    DBMemo1: TIWDBMemo;
    IWDBEdit1: TIWDBEdit;
    IWLabel1: TIWLabel;
    IWDBFile1: TIWDBFile;
    IWLabel2: TIWLabel;
    IWLabelUpdate: TIWLabel;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure dgrdFishRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure dgrdFishColumns0TitleClick(Sender: TObject);
    procedure dgrdFishColumns0Click(ASender: TObject;
      const AValue: String);
    procedure ButtonClick(Sender: TObject);
    procedure ButtonAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure EditAsyncChange(Sender: TObject; EventParams: TStringList);
  protected
    procedure GoFish(const ASpeciesNo: integer);
  public
  end;

implementation
{$R *.dfm}

uses
  Graphics,
  SysUtils;

procedure TformMain.GoFish(const ASpeciesNo: integer);
begin
  ClientDataSet1.Locate('Species No', ASpeciesNo, []);
end;

procedure TformMain.IWFormModuleBaseCreate(Sender: TObject);
begin
  ClientDataSet1.LoadFromFile('biolife.cds');
end;

procedure TformMain.dgrdFishRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  // -1 is Footer Row
  if ARow = -1 then begin
    ACell.BGColor := clSilver;
    if AColumn = 0 then begin
      ACell.Font.Color := clRed;
      ACell.Text := IntToStr(dgrdFish.RecordCount) + ' fish found.';
    end;
  end else if dgrdFish.RowIsCurrent then begin
    ACell.BGColor := clYellow;
  end;
  if (AColumn = 4) and (ARow > 0) then begin
    ACell.Control := TIWDBImage.Create(Self);
    TIWDBImage(ACell.Control).DataSource := dsrcMain;
    TIWDBImage(ACell.Control).DataField := 'Graphic';
  end;
  if (AColumn = 3) and (ARow > 0) then begin
    ACell.Control := TIWButton.Create(Self);
    TIWButton(ACell.Control).Caption := ACell.Text;
    TIWButton(ACell.Control).OnClick := ButtonClick;
    TIWButton(ACell.Control).Width := 150;
    ACell.Text := '';
  end;
  if (AColumn = 2) and (ARow > 0) then begin
    ACell.Control := TIWButton.Create(Self);
    TIWButton(ACell.Control).Caption := ACell.Text;
    TIWButton(ACell.Control).OnAsyncClick := ButtonAsyncClick;
    TIWButton(ACell.Control).Width := 100;
    ACell.Text := '';
  end;
  if (AColumn = 1) and (ARow > 0) then begin
    ACell.Control := TIWEdit.Create(Self);
    TIWEdit(ACell.Control).Text := ACell.Text;
    TIWEdit(ACell.Control).OnAsyncChange := EditAsyncChange;
    TIWEdit(ACell.Control).Width := 100;
    ACell.Text := '';
  end;
end;

procedure TformMain.ButtonAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowMessage(TIWButton(Sender).Caption);
end;

procedure TformMain.ButtonClick(Sender: TObject);
begin
  WebApplication.ShowMessage(TIWButton(Sender).Caption);
end;

procedure TformMain.EditAsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  IWLabelUpdate.Text := TIWEdit(Sender).Text;
end;

procedure TformMain.IWAppFormDestroy(Sender: TObject);
begin
  ClientDataSet1.Close;
end;

procedure TformMain.dgrdFishColumns0TitleClick(Sender: TObject);
var
  LSpeciesNo: integer;
begin
  LSpeciesNo := Trunc(ClientDataSet1SpeciesNo.Value);
  ClientDataSet1.Close; try
    ClientDataSet1.IndexFieldNames := TIWDBGridColumn(Sender).DataField;
  finally
    ClientDataSet1.LoadFromFile('biolife.cds');
  end;
  GoFish(LSpeciesNo);
end;


procedure TformMain.dgrdFishColumns0Click(ASender: TObject;
  const AValue: String);
begin
  GoFish(StrToInt(AValue));
end;

initialization
  TformMain.SetAsMainForm;

end.
