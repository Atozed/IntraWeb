unit uFinalize;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, frTopBar,
  frProductTree, Controls, Forms, IWBaseControl, IWControl,
  IWCompButton, IWHTMLControls, IWCompLabel, IWCompText, IWVCLBaseControl,
  IWGrids, IWVCLBaseContainer, IWContainer, IWRegion, IWCompRectangle,
  IWBaseHTMLControl;

type
  TISFFinalize = class(TIWAppForm)
    TopBar: TISFTopBar;
    LeftTree: TISFProductTree;
    rectMain: TIWRectangle;
    txtError: TIWText;
    grdItems: TIWGrid;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblShoppingCart: TIWLabel;
    lnkSubmit: TIWLink;
    lblTotal: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnConfirmOrderClick(Sender: TObject);
  protected
    function Validate : Boolean;
    procedure LoadOrder;
  public
  end;

implementation
{$R *.dfm}

uses
  uDBInterface,
  ServerController, IWBaseForm, DMDieFlyDie, IWCompEdit,
  IWCompCheckBox, Graphics, uCOnstants, DB, DBISAMTb,
  uCheckOut; 

procedure TISFFinalize.IWAppFormCreate(Sender: TObject);
begin
  // Load the product tree
  LeftTree.LoadTree;
  // Load the order
  LoadOrder;
end;

procedure TISFFinalize.LoadOrder;
var
  f : Integer;
  g : Integer;
  LEdit : TIWEdit;
  LCHeck : TIWCheckBox;
  LBigTotal : double;
const
  lcCellHeight = 24;
begin
  LBigTotal := 0;
  with dmFly.qrShoppingCart, grdItems do
    begin
      Close;
      ParamByName('ASessionID').AsString := UserSession.CartUserID;
      Open;

      RowCount := 1;

      Cell[0, 0].Width := '40%';
      Cell[0, 0].Text := 'Name';

      Cell[0, 1].Width := '15%';
      Cell[0, 1].Text := 'Quantity';

      Cell[0, 2].Width := '15%';
      Cell[0, 2].Text := 'Price per unit';

      Cell[0, 3].Width := '15%';
      Cell[0, 3].Text := 'Total price';

      Cell[0, 4].Width := '15%';
      Cell[0, 4].Text := 'Remove';

      for f := 0 to 4 do
        begin
          Cell[0, f].Font.Style := [fsBold];
          Cell[0, f].Alignment := taCenter;
          Cell[0, f].Height := IntToStr(lcHeaderCellHeight);
        end;

      f := 0;

      while not Eof do
        begin
          RowCount := RowCount + 1;
          Cell[f + 1, 0].Text := FieldByName('Name').AsString;
          Cell[f + 1, 0].Width := '40%';

          LEdit := TIWEdit.Create(Self);
          LEdit.Parent := Self;
          LEdit.Text := FieldByName('Quantity').AsString;
          LEdit.Tag := FieldByName('ProductID').AsInteger;
          LEdit.Alignment := taLeftJustify;
          LEdit.Width := 50;

          Cell[f + 1, 1].Control := LEdit;
          Cell[f + 1, 1].Alignment := taRightJustify;
          Cell[f + 1, 1].Width := '15%';

          Cell[f + 1, 2].Text := FormatFloat('###,###,###,##0.00', FieldByName('Price').AsFloat);
          Cell[f + 1, 2].Alignment := taRightJustify;
          Cell[f + 1, 2].Width := '15%';

          Cell[f + 1, 3].Text := FormatFloat('###,###,###,##0.00', FieldByName('Price').AsFloat * FieldByName('Quantity').AsInteger);
          Cell[f + 1, 3].Alignment := taRightJustify;
          Cell[f + 1, 3].Width := '15%';

          LBigTotal := LBigTotal + FieldByName('Price').AsFloat * FieldByName('Quantity').AsInteger;

          LCheck := TIWCheckBox.Create(Self);
          LCheck.Parent := Self;
          LCheck.Caption := '';
          LCheck.Tag := FieldByName('ProductID').AsInteger;
          Cell[f + 1, 4].Control := LCheck;
          Cell[f + 1, 4].Alignment := taCenter;
          Cell[f + 1, 4].Width := '15%';

          for g := 0 to 4 do
            Cell[f + 1, g].Height := IntToStr(lcCellHeight);

          f := f + 1;
          Next;
        end;
      Close;

      RowCount := RowCount + 1;
    end;

   // Set colors
  for f := 0 to Pred(grdItems.RowCount) do
     for g := 0 to 4 do
        if f in [0, Pred(grdItems.RowCount)] then
           grdItems.Cell[f, g].BGColor := lcHeaderColor
        else
           if f mod 2 = 0 then
              grdItems.Cell[f, g].BGColor := lcEvenColor
           else
              grdItems.Cell[f, g].BGColor := lcOddColor;


  lblTotal.Top := grdItems.Top +  grdItems.RowCount * lcCellHeight + 40;
  lblTotal.Caption := Format('Total : $%s', [FormatFloat('###,###,###,##0.00', LBigTotal)]);

  lnkSubmit.Top := lblTotal.Top + lblTotal.Height + 20;
end;

procedure TISFFinalize.btnConfirmOrderClick(Sender: TObject);
var
  LId : Integer;
  LOrderID : Integer;
  LIndex : Integer;
begin
  LId := 0;

  txtError.Font.Color := clBlack;
  txtError.Caption := 'Please check all the information below to be sure it''s correct.';

  if not Validate then
    begin
      txtError.Caption := 'There was a problem with one or more of the items';
      txtError.Font.Color := clRed;
      Exit;
    end;

  with dmFly.qrFinalizeUsers do
    begin
      CLose;
      ParamByName('AEMail').AsString := UserSession.Email;
      Open;
      if not Eof then
        begin
          LId := FieldByName('ID').AsInteger;
        end;
      Close;
    end;
  with dmFly.tbOrders do
    begin
      Close;
      Open;
      Insert;
      FieldByName('USERID').AsInteger := LId;
      FieldByName('ORDERDATE').AsDateTime := Time();
      FieldByName('SHIPDATE').AsDateTime := Time();
      Post;
      LOrderID := LastAutoIncValue;
      Close;
    end;


  with dmFly.qrInsertOrderDetails, grdItems do
    begin
      Close;
      for LIndex := 1 to grdItems.RowCount - 2 do
        begin
          SQL.Clear;
          SQL.Add('INSERT INTO ORDER_DETAILS(PRODUCTID, QUANTITY, ORDERID)');
          SQL.Add('VALUES (:AProductID, :AQuantity, :AOrderID)');
          ParamByName('AProductID').AsInteger := Cell[LIndex, 1].Control.Tag;
          ParamByName('AQuantity').AsInteger := StrToInt(TIWEdit(Cell[LIndex, 1].Control).Text);
          ParamByName('AOrderID').AsInteger := LOrderID;
          ExecSQL;
        end;
      Close;
    end;

  UserSession.CurrentOrderID := LOrderID;

  // clean shopping cart

  with dmFly.qrCart do
  begin
     SQL.Clear;
     SQL.Add('DELETE FROM Cart WHERE SessionID = :ASessionID');
     ParamByName('ASessionID').AsString := UserSession.CartUserID;
     ExecSQL;
  end;

  TISFCheckOut.Create(WebApplication).Show;
  Release;
end;

function TISFFinalize.Validate: Boolean;
var
  LIndex: Integer;
begin
  Result := True;
  for LIndex := 1 to grdItems.RowCount - 2 do begin
    try
      StrToInt(TIWEdit(grdItems.Cell[LIndex, 1].Control).Text);
    except
      Result := false;
      TIWEdit(grdItems.Cell[LIndex, 1].Control).Text := '1';
    end;
  end;
end;

end.
