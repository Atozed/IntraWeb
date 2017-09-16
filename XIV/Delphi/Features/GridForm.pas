//
unit GridForm;
{PUBDIST}

interface

uses
  IWAppForm, Classes, IWHTMLControls,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWCompButton, IWControl, IWCompCheckbox, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl, IWCompGrids;

type
  TformGrids = class(TIWAppForm)
    tablGrid: TIWGrid;
    chckUseFrame: TIWCheckBox;
    framMenu1: TframMenu;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure tablGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure chckUseFrameClick(Sender: TObject);
    procedure tablGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
  protected
    procedure DeleteButtonClick(ASender: TObject);
    function Total: Currency;
  public
  end;

implementation
{$R *.dfm}

uses
  Global,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  IWApplication, IWTypes,
  SysUtils;

procedure TformGrids.IWFormModuleBaseCreate(Sender: TObject);
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

procedure TformGrids.tablGridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
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

procedure TformGrids.DeleteButtonClick(ASender: TObject);
begin
  tablGrid.DeleteRow(TComponent(ASender).Tag);
end;

procedure TformGrids.chckUseFrameClick(Sender: TObject);
begin
  tablGrid.UseFrame := chckUseFrame.Checked;
end;

function TformGrids.Total: Currency;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to tablGrid.RowCount - 2 do begin
    Result := Result + FromCurrency(tablGrid.Cell[i, 3].Text);
  end;
end;

procedure TformGrids.tablGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
begin
  WebApplication.ShowMessage(tablGrid.Cell[ARow, 1].Text + ' has a balance of '
   + tablGrid.Cell[ARow, 3].Text);
end;

end.
