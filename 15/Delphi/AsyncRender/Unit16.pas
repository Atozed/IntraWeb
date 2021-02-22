unit Unit16;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompLabel, IWRegion, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWCompEdit, IWCompListbox, IWCompCheckbox,
  IWCompRadioButton, IWCompTabControl, IWCompTreeview, IWCompGrids,
  IWCompGridCommon, IWFont, Graphics, IWCompObject, IWCompMPEG, IWCompText,
  IWCompExtCtrls, IWHTMLControls, IWCompMemo, IWjQAccordion, IWjQPageControl;

type
  TIWForm16 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWComboBox1: TIWComboBox;
    IWText1: TIWText;
    IWURL1: TIWURL;
    procedure IWButton2Click(Sender: TObject);
    procedure IWCheckBox1Change(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWTreeView1TreeItemClick(Sender: TObject;
      ATreeViewItem: TIWTreeViewItem);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure LabelClickEvent(Sender: TObject; EventParams: TStringList);
    procedure MyKeyPressEvent(Sender: TObject; EventParams: TStringList);
    procedure MyButtonClick(Sender: TObject; EventParams: TStringList);
    procedure MyComboChange(Sender: TObject; EventParams: TStringList);
    procedure tablGridCellClick(ASender: TObject; const ARow, AColumn: Integer);
    procedure tablGridRenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
    procedure UpdateNameClick(ASender: TObject);
    procedure GridTotal;
  public
    FLabel: TIWLabel;
    FEdit: TIWEdit;
    FRegion,
    FRegion1: TIWRegion;
    FButton,
    FButton1: TIWButton;
    FComboBox: TIWComboBox;
    FCheckBox: TIWCheckBox;
    FTreeView: TIWTreeView;
    FIWGrid: TIWGrid;
    FTabControl: TIWTabControl;
    FIWModalWindow1: TIWModalWindow;
    FAccordion: TIWjQAccordion;
    FjQPageControl: TIWjQPageControl;
    FX, FY: Integer;
    procedure CreateButton(AParent: TWinControl = nil);
    procedure CreateComboBox(AParent: TWinControl = nil);
    procedure CreateLabel(AParent: TWinControl = nil);
    procedure CreateIWEdit(AParent: TWinControl = nil);
    procedure CreateRegion(AParent: TWinControl = nil);
    procedure CreateModalWindow;
    procedure CreateTabControl(AParent: TWinControl = nil);
    procedure CreateTreeView(AParent: TWinControl = nil);
    procedure CreateGrid(AParent: TWinControl = nil);
    procedure CreatejQAccordion(AParent: TWinControl = nil);
    procedure CreatejQPageControl(AParent: TWinControl = nil);
    procedure FreeAll;
  end;

implementation

{$R *.dfm}

uses
  IWContainerBorderOptions;

procedure TIWForm16.CreateModalWindow;
begin
  gSessions.Count;

  if Assigned(FIWModalWindow1) then
    Exit;

  FRegion1 := TIWRegion.Create(Self);
  FRegion1.Name := 'IWRegion1';
  FRegion1.Parent := Self;
  FRegion1.Width := 500;
  FRegion1.Height := 500;
  FRegion1.Visible := True;
  FRegion1.BorderOptions.NumericWidth := 0;

  FButton1 := TIWButton.Create(Self);
  FButton1.Name := 'IWButton2';
  FButton1.Caption := 'Click me! I do work!';
  FButton1.Width := 225;
  FButton1.Height := 30;
  FButton1.Parent := FRegion1;
  FButton1.Left := 50;
  FButton1.Top := 50;
  FButton1.Visible := True;
  FButton1.OnAsyncClick := MyButtonClick;

  CreateTreeView(FRegion1);

  FIWModalWindow1 := TIWModalWindow.Create(Self);
  FIWModalWindow1.Name := 'IWModalWindow1';
  FIWModalWindow1.Buttons.Add('OK');
  FIWModalWindow1.Buttons.Add('Cancel');
  FIWModalWindow1.ContentElement := FRegion1;

  FIWModalWindow1.Show;
end;

procedure TIWForm16.CreateButton(AParent: TWinControl = nil);
begin
  if Assigned(FButton) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;
  FButton := TIWButton.Create(Self);
  FButton.Name := 'IWButton2';
  FButton.Caption := 'Click me! I do work!';
  FButton.Width := 225;
  FButton.Height := 30;
  FButton.Parent := AParent;
  FButton.Left := FX;
  FButton.Top := FY;
  FButton.OnAsyncClick := MyButtonClick;
end;

procedure TIWForm16.CreateIWEdit(AParent: TWinControl = nil);
begin
  if Assigned(FEdit) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;
  FEdit := TIWEdit.Create(Self);
  FEdit.Name := 'IWEdit1';
  FEdit.Parent := AParent;
  FEdit.Left := FX;
  FEdit.Top := FY;
  FEdit.Height := 30;
  FEdit.Width := 225;
  FEdit.Text := 'Created in async!';
//  FEdit.OnAsyncKeyPress := MyKeyPressEvent;
end;

procedure TIWForm16.CreateLabel(AParent: TWinControl = nil);
begin
  if Assigned(FLabel) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;
  FLabel := TIWLabel.Create(Self);
  FLabel.Name := 'IWLabel2';
  FLabel.Parent := AParent;
  FLabel.Caption := 'Created in async - Click me!';
  FLabel.Cursor := crPointer;
  FLabel.Top := FY;
  FLabel.Left := FX;
  FLabel.Font.Size := 25;
  FLabel.Font.Color := clRed;
  FLabel.Width := 400;
  FLabel.OnAsyncClick := LabelClickEvent;
end;

procedure TIWForm16.CreateRegion(AParent: TWinControl = nil);
begin
  if Assigned(FRegion) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;
  FRegion := TIWRegion.Create(Self);
  FRegion.Name := 'IWRegion1';
  FRegion.Parent := AParent;
  FRegion.Top := FY;
  FRegion.Left := FX;
  FRegion.Width := 500;
  FRegion.Height := 300;
  FRegion.Visible := True;
  FRegion.BorderOptions.BorderWidth := cbwNumeric;
  FRegion.BorderOptions.Color := clWebSilver;
  FRegion.BorderOptions.NumericWidth := 1;
  FRegion.BorderOptions.Style := cbsSolid;

  CreateLabel(FRegion);
  Inc(FY, 50);
  CreateIWEdit(FRegion);
  Dec(FY, 50);
end;

procedure TIWForm16.CreateComboBox(AParent: TWinControl = nil);
begin
  if Assigned(FComboBox) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;
  FComboBox := TIWComboBox.Create(Self);
  FComboBox.Name := 'IWComboBoxNew';
  FComboBox.Parent := AParent;
  FComboBox.Left := FX;
  FComboBox.Top := FY;
  FComboBox.Height := 35;
  FComboBox.Width := 225;
  FComboBox.Items.Add('Item1=Value1');
  FComboBox.Items.Add('Item2=Value2');
  FComboBox.Items.Add('Item3=Value3');
  FComboBox.ItemsHaveValues := True;
  FComboBox.OnAsyncChange := MyComboChange;
end;

procedure TIWForm16.CreateTreeView(AParent: TWinControl = nil);
var
  Root,
    item: TIWTreeViewItem;
begin
  if Assigned(FTreeView) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;
  FTreeView := TIWTreeView.Create(Self);
  FTreeView.Name := 'IWTreeView1';
  FTreeView.Parent := AParent;
  FTreeView.AsyncMode := True;
  FTreeView.TreeItemClick := IWTreeView1TreeItemClick;

  Root := FTreeView.Items.Add(nil);
  Root.Caption := 'Root item 1';

  Item := FTreeView.Items.Add(Root);
  Item.Caption := 'Item 1';

  Item := FTreeView.Items.Add(Root);
  Item.Caption := 'Item 2';

  Root := FTreeView.Items.Add(nil);
  Root.Caption := 'Root item 2';

  Item := FTreeView.Items.Add(Root);
  Item.Caption := 'Item 3';

  FTreeView.Left := FX;
  FTreeView.Top := FY;
end;

procedure TIWForm16.FreeAll;
begin
  FreeAndNil(FLabel);
  FreeAndNil(FEdit);
  FreeAndNil(FRegion);
  FreeAndNil(FButton);
  FreeAndNil(FButton1);
  FreeAndNil(FComboBox);
  FreeAndNil(FCheckBox);
  FreeAndNil(FTreeView);
  FreeAndNil(FIWGrid);
  FreeAndNil(FTabControl);
  FreeAndNil(FIWModalWindow1);
  FreeAndNil(FRegion1);
  FreeAndNil(FAccordion);
  FreeAndNil(FjQPageControl);
end;

procedure TIWForm16.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  FreeAll;

  case IWComboBox1.ItemIndex of
    0: CreateButton;
    1: CreateLabel;
    2: CreateIWEdit;
    3: CreateRegion;
    4: CreateTreeView;
    5: CreateModalWindow;
    6: CreateGrid;
    7: CreateTabControl;
    8: CreateComboBox;
    9: CreatejQAccordion;
    10: CreatejQPageControl;
  end;
end;

procedure TIWForm16.IWButton2Click(Sender: TObject);
begin
  WebApplication.ShowMessage('IWButton2Click');
end;

procedure TIWForm16.LabelClickEvent(Sender: TObject; EventParams: TStringList);
begin
  FLabel.Left := FLabel.Left + 5;
end;

procedure TIWForm16.MyKeyPressEvent(Sender: TObject; EventParams: TStringList);
begin
  //
end;

procedure TIWForm16.MyButtonClick(Sender: TObject; EventParams: TStringList);
begin
//  SElf.PageContext.AddStyle('#iwbutton { style blab la bla; }'#13#10);
  WebApplication.ShowMessage('You clicked on ' + TIWControl(Sender).Name);
end;

procedure TIWForm16.MyComboChange(Sender: TObject; EventParams: TStringList);
begin
  WebApplication.ShowMessage('You selected: ' + FComboBox.SelectedValue);
end;

procedure TIWForm16.IWCheckBox1Change(Sender: TObject);
begin
  if FCheckBox.Checked then
    WebApplication.ShowMessage('Checked')
  else
    WebApplication.ShowMessage('Not Checked');
end;

procedure TIWForm16.CreateTabControl(AParent: TWinControl = nil);
var
  Page0,
  Page1: TIWTabPage;
begin
  if Assigned(FTabControl) then
    Exit;

  if not Assigned(AParent) then
    AParent := Self;

  FTabControl := TIWTabControl.Create(Self);
  FTabControl.Parent := AParent;

  FTabControl.Name := 'FTabControl';
  FTabControl.Left := 168;
  FTabControl.Top := 200;
  FTabControl.Width := 393;
  FTabControl.Height := 337;
  FTabControl.RenderInvisibleControls := True;
  FTabControl.ActiveTabColor := clWebCORNFLOWERBLUE;
  FTabControl.InactiveTabColor := clActiveCaption;
  FTabControl.ActivePage := 0;
  FTabControl.Color := clWebWHITE;
  FTabControl.ClipRegion := False;
  FTabControl.TabPadding := 10;
  FTabControl.TabRowHeight := 40;
  FTabControl.TabHeight := 40;
  FTabControl.TabBorderRadius := 10;

  Page0 := FTabControl.CreateNewPage('Page0');
  Page0.Left := 0;
  Page0.Top := 40;
  Page0.Width := 389;
  Page0.Height := 297;
  Page0.TabOrder := 0;
  Page0.Title := 'Page0';
  Page0.Color := clWebWHITE;
  Page0.BorderOptions.BorderWidth := cbwNumeric;
  Page0.BorderOptions.Color := clWebSilver;
  Page0.BorderOptions.NumericWidth := 1;
  Page0.BorderOptions.Style := cbsSolid;

  Page1 := FTabControl.CreateNewPage('Page1');
  Page1.Left := 0;
  Page1.Top := 40;
  Page1.Width := 389;
  Page1.Height := 297;
  Page1.TabOrder := 1;
  Page1.Title := 'Page1';
  Page1.Color := clWebWHITE;
  Page1.BorderOptions.BorderWidth := cbwNumeric;
  Page1.BorderOptions.Color := clWebSilver;
  Page1.BorderOptions.NumericWidth := 1;
  Page1.BorderOptions.Style := cbsSolid;

  CreateButton(Page1);
  CreateComboBox(Page0);
end;

procedure TIWForm16.CreatejQAccordion(AParent: TWinControl);
begin
  FAccordion := TIWjQAccordion.Create(Self);

  FAccordion.Name := 'IWjQAccordion2';
  FAccordion.Parent := Self;
  FAccordion.Left := 168;
  FAccordion.Top := 200;
  FAccordion.Width := 393;
  FAccordion.Height := 337;
  FAccordion.RenderInvisibleControls := True;
  FAccordion.TabHeight := 34;
  FAccordion.TabTextHeight := 17;
  FAccordion.TabBorderHeight := 2;
  FAccordion.TabMargin := 2;
  FAccordion.TabPadding := 13;
  FAccordion.CreateSection('Section 1');
  FAccordion.CreateSection('Section 2');
  FAccordion.CreateSection('Section 3');
  FAccordion.ActiveSectionIndex := 0;
end;

procedure TIWForm16.CreatejQPageControl(AParent: TWinControl);
begin
  FjQPageControl := TIWjQPageControl.Create(Self);

  FjQPageControl.Name := 'IWjQPageControl1';
  FjQPageControl.Parent := Self;
  FjQPageControl.Left := 168;
  FjQPageControl.Top := 200;
  FjQPageControl.Width := 393;
  FjQPageControl.Height := 337;
  FjQPageControl.RenderInvisibleControls := True;
  FjQPageControl.TabHeight := 30;
  FjQPageControl.TabTextHeight := 17;
  FjQPageControl.TabMargin := 7;
  FjQPageControl.TabPadding := 13;
  FjQPageControl.TabBorderHeight := 0;
  FjQPageControl.CreatePage('Page 1');
  FjQPageControl.CreatePage('Page 2');
  FjQPageControl.CreatePage('Page 3');
  FjQPageControl.ActivePageIndex := 0;
end;

procedure TIWForm16.IWAppFormCreate(Sender: TObject);
begin
  FX := 80;
  FY := 150;
  IWComboBox1.ItemIndex := 0;
end;

procedure TIWForm16.IWTreeView1TreeItemClick(Sender: TObject;
  ATreeViewItem: TIWTreeViewItem);
begin
  WebApplication.ShowMessage(ATreeViewItem.Caption);
end;

function iif(ACondition: boolean; ATrue, AFalse: string): string;
begin
  if ACondition then
    Result := ATrue
  else
    Result := AFalse;
end;

procedure TIWForm16.CreateGrid(AParent: TWinControl = nil);
var
  i: Integer;
  LAmount: Currency;
  LFirstNames: TStringList;
  LLastNames: TStringList;
begin
  if Assigned(FIWGrid) then
  begin
    Exit;
  end;

  if not Assigned(AParent) then
    AParent := Self;

  FIWGrid := TIWGrid.Create(Self);

  FIWGrid.Name := 'tablGrid';
  FIWGrid.Parent := AParent;
  FIWGrid.Left := FX;
  FIWGrid.Top := FY;
  FIWGrid.Width := 513;
  FIWGrid.Height := 257;
  FIWGrid.BGColor := clNone;
  FIWGrid.BorderSize := 1;
  FIWGrid.BorderStyle := tfDefault;
  FIWGrid.Caption := 'Account Balances';
  FIWGrid.CellPadding := 4;
  FIWGrid.CellSpacing := 0;
  FIWGrid.FrameBuffer := 40;
  FIWGrid.Lines := tlAll;
  FIWGrid.OnRenderCell := tablGridRenderCell;
  FIWGrid.UseFrame := False;
  FIWGrid.UseSize := True;
  FIWGrid.FriendlyName := 'tablGrid';
  FIWGrid.ColumnCount := 4;
  FIWGrid.OnCellClick := tablGridCellClick;
  FIWGrid.RowCount := 10;
  FIWGrid.ShowEmptyCells := True;
  FIWGrid.ShowInvisibleRows := True;
  FIWGrid.ScrollToCurrentRow := False;

  LLastNames := TStringList.Create;
  try
    with LLastNames do
    begin
      Add('Smith');
      Add('Green');
      Add('Jones');
      Add('Wagner');
      Add('Black');
      Add('Donner');
      Add('Bush');
    end;
    LFirstNames := TStringList.Create;
    try
      with LFirstNames do
      begin
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
      with FIWGrid do
      begin
        with Cell[0, 0] do
        begin
          Text := 'Name';
          Width := '200';
        end;
        with Cell[0, 1] do
        begin
          Text := '';
          Width := '50';
        end;
        with Cell[0, 2] do
        begin
          Text := 'Date';
          Width := '60';
        end;
        with Cell[0, 3] do
        begin
          Text := 'Amount';
          Width := '60';
        end;
        for i := 1 to RowCount - 2 do
        begin
          with Cell[i, 0] do
          begin
            Clickable := True;
            Text := LFirstNames[Random(LFirstNames.Count)] + ' '
              + LLastNames[Random(LLastNames.Count)];
          end;
          Cell[i, 1].Text := '';
          with Cell[i, 2] do
          begin
            Alignment := taCenter;
            Text := IntToStr(Random(12) + 1) + '/' + IntToStr(Random(29) + 1) +
              '/'
              + IntToStr(Random(3) + 1999)
          end;
          with Cell[i, 3] do
          begin
            Alignment := taRightJustify;
            LAmount := Random * 200;
            if Random(4) = 0 then
            begin
              LAmount := -LAmount;
            end;
            Control := TIWEdit.Create(Self);
            with TIWEdit(Control) do
            begin
              Text := Format('%s$%f', [iif(LAmount < 0, '-', ''),
                  Abs(LAmount)]);
              Width := 75;
            end;
          end;
        end;
        with Cell[RowCount - 1, 3] do
        begin
          Alignment := taRightJustify;
          Clickable := True;
          Font.Style := [fsBold];
        end;
        GridTotal;
      end;
    finally FreeAndNil(LFirstNames);
    end;
  finally FreeAndNil(LLastNames);
  end;
end;

{$REGION 'Grid supporting routines'}
function FromCurrency(const AText: string): Currency;
var
  i: Integer;
  s: string;
begin
  s := AText;
  for i := Length(s) downto 1 do
  begin
    if Pos(s[i], '0123456789.,') = 0 then
    begin
      Delete(s, i, 1);
    end;
  end;
  if not TextToFloat(PChar(s), Result, fvCurrency) then
  begin
    Result := 0;
  end;
  if ((Pos('-', AText) > 0) or (Pos('(', AText) > 0)) then
  begin
    Result := -Result;
  end;
end;

procedure TIWForm16.GridTotal;
var
  i: Integer;
  LAmount: Currency;
  LEdit: TIWEdit;
  LTotal: Currency;
begin
  LTotal := 0;
  for i := 1 to FIWGrid.RowCount - 2 do
  begin
    LEdit := TIWEdit(FIWGrid.Cell[i, 3].Control);
    LAmount := FromCurrency(LEdit.Text);
    // Reformat it
    LEdit.Text := Format('%s$%f', [iif(LAmount < 0, '-', ''), Abs(LAmount)]);
    LTotal := LTotal + LAmount;
  end;
  with FIWGrid.Cell[FIWGrid.RowCount - 1, 3] do
  begin
    if LTotal < 0 then
    begin
      Font.Color := clRed;
    end
    else
    begin
      Font.Color := clBlue;
    end;
    Text := Format('%s$%f', [iif(LTotal < 0, '-', ''), Abs(LTotal)]);
  end;
end;

procedure TIWForm16.tablGridRenderCell(ACell: TIWGridCell; const ARow, AColumn:
  Integer);
begin
  with ACell do
  begin
    // Title Row
    if ARow = 0 then
    begin
      BGColor := clBlue;
      Font.Style := [fsBold];
      // Dont include the total row
    end
    else if ARow < FIWGrid.RowCount - 1 then
    begin
      // Alternate Row Colors
      if Odd(ARow) then
      begin
        BGColor := clLtGray;
      end
      else
      begin
        BGColor := clNone;
      end;
      // Mark negative values as red
      if AColumn = 3 then
      begin
        if FromCurrency(TIWEdit(Control).Text) < 0 then
        begin
          Font.Color := clRed;
        end;
      end;
    end;
  end;
end;

procedure TIWForm16.UpdateNameClick(ASender: TObject);
var
  LButton: TIWButton;
  LEdit: TIWEdit;
begin
  LButton := ASender as TIWButton;
  LEdit := FIWGrid.Cell[LButton.Tag, 0].Control as TIWEdit;
  // Update and free edit
  with FIWGrid.Cell[LButton.Tag, 0] do
  begin
    Text := LEdit.Text;
    Control := nil;
  end;
  LEdit.Free;
  // Remove button
  FIWGrid.Cell[LButton.Tag, 1].Control := nil;
  LButton.Free;
end;

procedure TIWForm16.tablGridCellClick(ASender: TObject; const ARow,
  AColumn: Integer);
var
  LButton: TIWButton;
  LEdit: TIWEdit;
begin
  if AColumn = 0 then
  begin
    // Create an edit box
    LEdit := TIWEdit.Create(Self);
    // Set the cell's control property
    FIWGrid.Cell[ARow, AColumn].Control := LEdit;
    // Get cell value
    LEdit.Text := FIWGrid.Cell[ARow, AColumn].Text;
    // Clear the cell text because the edit will display it.
    FIWGrid.Cell[ARow, AColumn].Text := '';

    LButton := TIWButton.Create(Self);
    FIWGrid.Cell[ARow, AColumn + 1].Control := LButton;
    // Use the tag to record which row the button is in
    LButton.Tag := ARow;
    LButton.Caption := 'Done';
    LButton.OnClick := UpdateNameClick;
  end
  else
  begin
    GridTotal;
  end;
end;
{$ENDREGION 'Grid supporting routines'}

initialization
  TIWForm16.SetAsMainForm;

end.

