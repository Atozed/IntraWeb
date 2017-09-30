//
unit EditGridForm;
{PUBDIST}

interface

uses
  IWAppForm, IWGrids, Classes, IWHTMLControls,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWCompButton, IWControl, IWCompText, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformEditGrid = class(TIWAppForm)
    tablGrid: TIWGrid;
    IWText1: TIWText;
    framMenu1: TframMenu;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure tablGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure tablGridCellClick(ASender: TObject; const ARow,
      AColumn: Integer);
  protected
    procedure Total;
    procedure UpdateNameClick(ASender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  Global,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  IWApplication, IWCompEdit,
  SysUtils;

function iif(ACondition: boolean; ATrue, AFalse: string) : string;
begin
  if ACondition then
    Result := ATrue
  else
    Result := AFalse;
end;

procedure TformEditGrid.IWFormModuleBaseCreate(Sender: TObject);
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
        with Cell[0, 0] do begin
          Text := 'Name';
          Width := '200';
        end;
        with Cell[0, 1] do begin
          Text := '';
          Width := '50';
        end;
        with Cell[0, 2] do begin
          Text := 'Date';
          Width := '60';
        end;
        with Cell[0, 3] do begin
          Text := 'Amount';
          Width := '60';
        end;
        for i := 1 to RowCount - 2 do begin
          with Cell[i, 0] do begin
            Clickable := True;
            Text := LFirstNames[Random(LFirstNames.Count)] + ' '
             + LLastNames[Random(LLastNames.Count)];
          end;
          Cell[i, 1].Text := '';
          with Cell[i, 2] do begin        
            Alignment := taCenter;
            Text := IntToStr(Random(12) + 1) + '/' + IntToStr(Random(29) + 1) + '/'
             + IntToStr(Random(3) + 1999)
          end;
          with Cell[i, 3] do begin
            Alignment := taRightJustify;
            LAmount := Random * 200;
            if Random(4) = 0 then begin
              LAmount := -LAmount;
            end;
            Control := TIWEdit.Create(Self);
            with TIWEdit(Control) do begin
              Text := Format('%s$%f', [iif(LAmount < 0, '-', ''), Abs(LAmount)]);
              Width := 75;
            end;
          end;
        end;
        with Cell[RowCount - 1, 3] do begin
          Alignment := taRightJustify;
          Clickable := True;
          Font.Style := [fsBold];
        end;
        Total;
      end;
    finally FreeAndNil(LFirstNames); end;
  finally FreeAndNil(LLastNames); end;
end;

procedure TformEditGrid.tablGridRenderCell(ACell: TIWGridCell; const ARow, AColumn: Integer);
begin
  with ACell do begin
    // Title Row
    if ARow = 0 then begin
      BGColor := clBlue;
      Font.Style := [fsBold];
    // Dont include the total row
    end else if ARow < tablGrid.RowCount - 1 then begin
      // Alternate Row Colors
      if Odd(ARow) then begin
        BGColor := clLtGray;
      end else begin
        BGColor := clNone;
      end;
      // Mark negative values as red
      if AColumn = 3 then begin
        if FromCurrency(TIWEdit(Control).Text) < 0 then begin
          Font.Color := clRed;
        end;
      end;
    end;
  end;
end;

procedure TformEditGrid.UpdateNameClick(ASender: TObject);
var
  LButton: TIWButton;
  LEdit: TIWEdit;
begin
  LButton := ASender as TIWButton;
  LEdit := tablGrid.Cell[LButton.Tag, 0].Control as TIWEdit;
  // Update and free edit
  with tablGrid.Cell[LButton.Tag, 0] do begin
    Text := LEdit.Text;
    Control := nil;
  end;
  LEdit.Free;
  // Remove button
  tablGrid.Cell[LButton.Tag, 1].Control := nil;
  LButton.Free;
end;

procedure TformEditGrid.Total;
var
  i: Integer;
  LAmount: Currency;
  LEdit: TIWEdit;
  LTotal: Currency;
begin
  LTotal := 0;
  for i := 1 to tablGrid.RowCount - 2 do begin
    LEdit := TIWEdit(tablGrid.Cell[i, 3].Control);
    LAmount := FromCurrency(LEdit.Text);
    // Reformat it
    LEdit.Text := Format('%s$%f', [iif(LAmount < 0, '-', ''), Abs(LAmount)]);
    LTotal := LTotal + LAmount;
  end;
  with tablGrid.Cell[tablGrid.RowCount - 1, 3] do begin
    if LTotal < 0 then begin
      Font.Color := clRed;
    end else begin
      Font.Color := clBlue;
    end;
    Text := Format('%s$%f', [iif(LTotal < 0, '-', ''), Abs(LTotal)]);
  end;
end;

procedure TformEditGrid.tablGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  LButton: TIWButton;
  LEdit: TIWEdit;
begin
  if AColumn = 0 then begin
    // Create an edit box
    LEdit := TIWEdit.Create(Self);
    // Set the cell's control property
    tablGrid.Cell[ARow, AColumn].Control := LEdit;
    // Get cell value
    LEdit.Text := tablGrid.Cell[ARow, AColumn].Text;
    // Clear the cell text because the edit will display it.
    tablGrid.Cell[ARow, AColumn].Text := '';

    LButton := TIWButton.Create(Self);
    tablGrid.Cell[ARow, AColumn + 1].Control := LButton;
    // Use the tag to record which row the button is in
    LButton.Tag := ARow;
    LButton.Caption := 'Done';
    LButton.OnClick := UpdateNameClick;
  end else begin
    Total;
  end;
end;

end.
