unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  Data.Win.ADODB, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWDBStdCtrls, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWCompButton, IWCompEdit,
  IWCompListbox, IWDBAsyncNavigator, IWCompReCaptcha, IWBaseComponent,
  IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls, IWCanvas,
  IWChartJS, IWjQGrid, IWCompMemo, IWCompLabel, IWCompGradButton, IWCompGrids,
  IWDBGrids, IWCompCheckbox;

type
  TIWForm1 = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWRegion2: TIWRegion;
    IWMemo1: TIWMemo;
    IWGrid1: TIWGrid;
    IWButton1: TIWButton;
    IWGrid2: TIWGrid;
    IWMemo2: TIWMemo;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure FillIWGrid1;
    function GetIWGrid1CellControl(ARow, ACol: Integer; AValue: String): TIWCustomControl;
    procedure FreeIWGrid1Items;
    procedure FillIWGrid2;
    function GetIWGrid2CellControl(ARow, ACol: Integer; AValue: String): TIWCustomControl;
    procedure FreeIWGrid2Items;
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    POCheckbox: TIWCheckBox;
  public
  end;

implementation

{$R *.dfm}

uses
  UserSessionUnit,
  ServerController;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  FillIWGrid1;
end;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  i: Integer;
  c: TIWCheckBox;
  e: TIWEdit;
begin
  IWMemo1.Clear;
  For i := 1 To IWGrid1.RowCount - 1 Do
  Begin
      c := IWGrid1.Cell[i, 0].Control as TIWCheckBox;
      If c <> nil Then
      Begin
        If c.Checked Then
          IWMemo1.Lines.Add('Row' + IntToStr(i) + ' Checkbox Checked')
        Else
          IWMemo1.Lines.Add('Row' + IntToStr(i) + ' Checkbox UnChecked');
      End;

      e := IWGrid1.Cell[i, 3].Control as TIWEdit;
      If e <> nil Then
      Begin
          IWMemo1.Lines.Add('Row' + IntToStr(i) + ' Text: ' + e.Text);
      End;
  End;
end;

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  i: Integer;
  c: TIWCheckBox;
  e: TIWEdit;
begin
  IWMemo2.Clear;
  For i := 1 To IWGrid2.RowCount - 1 Do
  Begin
      c := IWGrid2.Cell[i, 0].Control as TIWCheckBox;
      If c <> nil Then
      Begin
        If c.Checked Then
          IWMemo2.Lines.Add('Row' + IntToStr(i) + ' Checkbox Checked')
        Else
          IWMemo2.Lines.Add('Row' + IntToStr(i) + ' Checkbox UnChecked');
      End;

      e := IWGrid2.Cell[i, 3].Control as TIWEdit;
      If e <> nil Then
      Begin
          IWMemo2.Lines.Add('Row' + IntToStr(i) + ' Text: ' + e.Text);
      End;
  End;
end;

procedure TIWForm1.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  FillIWGrid2;
end;

procedure TIWForm1.FillIWGrid1;
var
  r: Integer;
  aName: String;
  z: TIWCustomControl;
begin
  FreeIWGrid1Items;
  IWGrid1.Clear;
  For r := 0 To 3 Do
  Begin
    If (r = 0) Then
    Begin
      IWGrid1.Cell[r, 0].Text := 'Column1';
      IWGrid1.Cell[r, 1].Text := 'Column2';
      IWGrid1.Cell[r, 2].Text := 'Column3';
      IWGrid1.Cell[r, 3].Text := 'Column4'
    End Else
    Begin
      IWGrid1.Cell[r, 0].Control := GetIWGrid1CellControl(r, 0, '');
      IWGrid1.Cell[r, 1].Text := 'Cell(' + IntToStr(r) + ', 2)';
      IWGrid1.Cell[r, 2].Text := 'Cell(' + IntToStr(r) + ', 3)';
      IWGrid1.Cell[r, 3].Control := GetIWGrid1CellControl(r, 3, IntToStr(r * 10));
    End;
  End;
  IWGrid1.RefreshAsyncRender;
end;

function TIWForm1.GetIWGrid1CellControl(ARow, ACol: Integer; AValue: String): TIWCustomControl;
var
  aName: String;
  i: Integer;
begin
  Result := nil;
  Case ACol Of
    0: Begin
         aName := Self.Name + 'IWGrid1Checkbox' + IntToStr(ARow);

         Result := Self.FindComponent(aName) as TIWCustomControl;

         If Result = nil Then
         Begin
           Result := TIWCheckBox.Create(Self);

           With TIWCheckBox(Result) Do
           Begin
             Parent := Self;
             Name := aName;
             FriendlyName := aName;
             Caption := '';
             Style := stSquareBW1;
             Checked := False;
           End;
         End;
    End;
    3: Begin
         aName := Self.Name + 'IWGrid1Edit' + IntToStr(ARow);

         Result := Self.FindComponent(aName) as TIWCustomControl;

         If Result = nil Then
         Begin
           Result := TIWEdit.Create(Self);

           With TIWEdit(Result) Do
           Begin
             Parent := Self;
             Name := aName;
             FriendlyName := aName;
             Alignment := TAlignment(2); //taCenter;
             Attributes := [];
             DataType := stNumber;
             DataTypeOptions.Min := '0';
             DataTypeOptions.NumberType := ntInteger;
             DataTypeOptions.NumberValidation := nvIntraWeb;
             DataTypeOptions.Step := '1';
             DelayKeyEvents := True;
             Width := 60;
             Height := 24;
             Text := AValue;
           End;
         End;
    End;
  End;
end;

procedure TIWForm1.FreeIWGrid1Items;
var
  i: Integer;
  aName: String;
  z: TIWCustomControl;
begin
  For i := 1 To 350 Do
  Begin
    aName := Self.Name + 'IWGrid1Checkbox' + IntToStr(i);
    z := Self.FindComponent(aName) as TIWCustomControl;
    If z <> nil Then
      RemoveComponent(z);

    aName := Self.Name + 'IWGrid1Edit' + IntToStr(i);
    z := Self.FindComponent(aName) as TIWCustomControl;
    If z <> nil Then
      RemoveComponent(z);
  End;
end;

procedure TIWForm1.FillIWGrid2;
var
  r: Integer;
  aName: String;
  z: TIWCustomControl;
begin
  FreeIWGrid2Items;
  IWGrid2.Clear;
  For r := 0 To 3 Do
  Begin
    If (r = 0) Then
    Begin
      IWGrid2.Cell[r, 0].Text := 'Column1';
      IWGrid2.Cell[r, 1].Text := 'Column2';
      IWGrid2.Cell[r, 2].Text := 'Column3';
      IWGrid2.Cell[r, 3].Text := 'Column4'
    End Else
    Begin
      IWGrid2.Cell[r, 0].Control := GetIWGrid2CellControl(r, 0, '');
      IWGrid2.Cell[r, 1].Text := 'Cell(' + IntToStr(r) + ', 2)';
      IWGrid2.Cell[r, 2].Text := 'Cell(' + IntToStr(r) + ', 3)';
      IWGrid2.Cell[r, 3].Control := GetIWGrid2CellControl(r, 3, IntToStr(r * 10));
    End;
  End;
  IWGrid2.RefreshAsyncRender;
end;

function TIWForm1.GetIWGrid2CellControl(ARow, ACol: Integer; AValue: String): TIWCustomControl;
var
  aName: String;
  i: Integer;
begin
  Result := nil;
  Case ACol Of
    0: Begin
         aName := Self.Name + 'IWGrid2Checkbox' + IntToStr(ARow);

         Result := Self.FindComponent(aName) as TIWCustomControl;

         If Result = nil Then
         Begin
           Result := TIWCheckBox.Create(Self);

           With TIWCheckBox(Result) Do
           Begin
             // When creating IW controls at runtime during asyne events,
             // it is absolutely needed to correctly set the *parent* of the control
             Parent := Self;
             Name := aName;
             FriendlyName := aName;
             Caption := '';
             Style := stSquareBW1;
             Checked := False;
           End;
         End;
    End;
    3: Begin
         aName := Self.Name + 'IWGrid2Edit' + IntToStr(ARow);

         Result := Self.FindComponent(aName) as TIWCustomControl;

         If Result = nil Then
         Begin
           Result := TIWEdit.Create(Self);

           With TIWEdit(Result) Do
           Begin
             // When creating IW controls at runtime during asyne events,
             // it is absolutely needed to correctly set the *parent* of the control
             Parent := Self;
             Name := aName;
             FriendlyName := aName;
             Alignment := TAlignment(2); //taCenter;
             Attributes := [];
             DataType := stNumber;
             DataTypeOptions.Min := '0';
             DataTypeOptions.NumberType := ntInteger;
             DataTypeOptions.NumberValidation := nvIntraWeb;
             DataTypeOptions.Step := '1';
             DelayKeyEvents := True;
             Width := 60;
             Height := 24;
             Text := AValue;
           End;
         End;
    End;
  End;
end;

procedure TIWForm1.FreeIWGrid2Items;
var
  i: Integer;
  aName: String;
  z: TIWCustomControl;
begin
  For i := 1 To 350 Do
  Begin
    aName := Self.Name + 'IWGrid2Checkbox' + IntToStr(i);
    z := Self.FindComponent(aName) as TIWCustomControl;
    If z <> nil Then
      RemoveComponent(z);

    aName := Self.Name + 'IWGrid2Edit' + IntToStr(i);
    z := Self.FindComponent(aName) as TIWCustomControl;
    If z <> nil Then
      RemoveComponent(z);
  End;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
