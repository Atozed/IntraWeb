unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, IWCompLabel, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWCompGradButton,
  IWCompListbox, IWCompEdit, IWCompGrids;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWEdit1: TIWEdit;
    IWComboBox1: TIWComboBox;
    tablGrid: TIWGrid;
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure tablGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure IWAppFormCreate(Sender: TObject);
  private
    function CreateTestFile: string;
    procedure FillGrid;
    procedure DeleteButtonClick(ASender: TObject);
    function Total: Currency;  public
  end;

implementation

{$R *.dfm}

uses
  IWGlobal, Graphics;

function TIWForm1.CreateTestFile: string;
var
  sl: TStringList;
begin
  sl := TStringList.Create;
  try
    sl.Add('this is a test file for IW');
    sl.Add('侯：真喝醉的人，怕别人说他醉了');
    sl.Add('der jämmerlich heulte. „Warum heulst du denn so, Pack an?“');
    sl.Add('áéíóúàèìòùãõ');
    Result := gSC.ContentPath + 'áéíóúàèìòùãõ.dat';
    sl.SaveToFile(Result, TEncoding.UTF8);
  finally
    sl.Free;
  end;
end;

procedure TIWForm1.IWButton4Click(Sender: TObject);
var
  FileName: string;
begin
  FileName := CreateTestFile;
  WebApplication.SendFile(FileName, False);
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWButton3.Visible := not IWButton3.Visible;
end;

procedure TIWForm1.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  if IWButton2.Color = clBtnFace then begin
    IWButton2.Color := clWebAQUA;
  end else begin
    IWButton2.Color := clBtnFace;
  end;

end;

function FromCurrency(const AText: string): Currency;
var
  i: Integer;
  s: string;
begin
  s := AText;
  for i := Length(s) downto 1 do begin
    if Pos(s[i], '0123456789.,') = 0 then begin
      Delete(s, i, 1);
    end;
  end;
  if not TextToFloat(PChar(s), Result, fvCurrency) then begin
    Result := 0;
  end;
  if ((Pos('-', AText) > 0) or (Pos('(', AText) > 0)) then begin
    Result := -Result;
  end;
end;

procedure TIWForm1.FillGrid;
var
  i: Integer;
  LAmount: Currency;
  LFirstNames: TStringList;
  LLastNames: TStringList;
begin
  LLastNames := TStringList.Create; try
    with LLastNames do begin
      Add('Smith');
      Add('Green');
      Add('Jones');
      Add('Wagner');
      Add('Black');
      Add('Donner');
      Add('Bush');
    end;
    LFirstNames := TStringList.Create; try
      with LFirstNames do begin
        Add('John');
        Add('Mary');
        Add('Elena');
        Add('Nancy');
        Add('James');
        Add('George');
        Add('Daryl');
        Add('Deborah');
        Add('Erik');
        Add('Leon');
        Add('Bill');
        Add('Dan');
      end;
      with tablGrid do begin
        Cell[0, 1].Text := 'Name';
        Cell[0, 2].Text := 'Date';
        Cell[0, 3].Text := 'Amount';
        for i := 1 to RowCount - 2 do begin
          with Cell[i, 0] do begin
            Clickable := True;
            Text := 'Info';
          end;
          with Cell[i, 1] do begin
            Text := LFirstNames[Random(LFirstNames.Count)] + ' '
             + LLastNames[Random(LLastNames.Count)];
          end;
          with Cell[i, 2] do begin
            Text := IntToStr(Random(12) + 1) + '/' + IntToStr(Random(29) + 1) + '/'
             + IntToStr(Random(3) + 1999)
          end;
          with Cell[i, 3] do begin
            Alignment := taRightJustify;
            LAmount := Random * 200;
            if Random(4) = 0 then begin
              LAmount := -LAmount;
            end;
            Text := Format('%m', [LAmount]);
          end;
          with Cell[i, 4] do begin
            Control := TIWButton.Create(Self);
            with TIWButton(Control) do begin
              Caption := 'Delete';
              Confirmation := 'Delete this row?';
              OnClick := DeleteButtonClick;
            end;
          end;
        end;
        with Cell[RowCount - 1, 3] do begin
          Alignment := taRightJustify;
          Text := '0';
          Font.Style := [fsBold];
        end;
      end;
    finally FreeAndNil(LFirstNames); end;
  finally FreeAndNil(LLastNames); end;
end;

procedure TIWForm1.tablGridRenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
var
  LTotal: Currency;
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      Alignment := taCenter;
      BGColor := clBlue;
      Font.Style := [fsBold];
    // Total Row
    end else if ARow = tablGrid.RowCount - 1 then begin
      LTotal := Total;
      if LTotal < 0 then begin
        Font.Color := clRed;
      end else begin
        Font.Color := clBlue;
      end;
      Text := Format('%m', [LTotal]);
    end else begin
      // Alternate Row Colors
      if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
      // Mark negative values as red
      if AColumn = 3 then begin
        if FromCurrency(Text) < 0 then begin
          Font.Color := clRed;
        end;
      end;
      // We set the tags here, because when we delete we need to renumber them
      if AColumn = 4 then begin
        TIWButton(ACell.Control).Tag := ARow;
      end;
    end;
  end;
end;

procedure TIWForm1.DeleteButtonClick(ASender: TObject);
begin
  tablGrid.DeleteRow(TComponent(ASender).Tag);
end;

function TIWForm1.Total: Currency;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to tablGrid.RowCount - 2 do begin
    Result := Result + FromCurrency(tablGrid.Cell[i, 3].Text);
  end;
end;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  FillGrid;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
