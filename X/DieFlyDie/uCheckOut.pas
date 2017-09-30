unit uCheckOut;

interface

uses                  
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  frProductTree, Controls, Forms, frTopBar, IWGrids, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompRectangle, IWBaseHTMLControl;

type
  TISFCheckOut = class(TIWAppForm)
    rectMain: TIWRectangle;
    grdItems: TIWGrid;
    TopBar: TISFTopBar;
    LeftTree: TISFProductTree;
    rectLeft: TIWRectangle;
    lblTitle: TIWLabel;
    rectTitle: TIWRectangle;
    lblTotal: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  protected
    procedure LoadOrder;
    procedure FormatGridHeader;
    procedure FormatGrid;
  end;

implementation
{$R *.dfm}

uses
  ServerController, dmDieFlyDie, DBISAMTb,
  uCOnstants, Graphics, DB;

procedure TISFCheckOut.FormatGridHeader;
var
  f : Integer;
begin
  // format grid
  with grdItems do
    begin
      RowCount := 1;

      Cell[0, 0].Width := '40%';
      Cell[0, 0].Text := 'Name';

      Cell[0, 1].Width := '20%';
      Cell[0, 1].Text := 'Quantity';

      Cell[0, 2].Width := '20%';
      Cell[0, 2].Text := 'Price';

      Cell[0, 3].Width := '20%';
      Cell[0, 3].Text := 'Subtotal';

      for f := 0 to ColumnCount - 1 do
        begin
          Cell[0, f].Font.Style := [fsBold];
          Cell[0, f].Alignment := taCenter;
          Cell[0, f].Height := IntToStr(lcHeaderCellHeight);
        end;
    end;
end;

procedure TISFCheckOut.IWAppFormCreate(Sender: TObject);
begin
  LeftTree.LoadTree;
  FormatGridHeader;
  LoadOrder;
  FormatGrid;
end;

procedure TISFCheckOut.LoadOrder;
var
  LBigTotal : Double;
begin
  LBigTotal := 0;
  with dmFly.qrOrderDetails, grdItems do
    begin
      CLose;
      ParamByNAme('AOrderID').AsInteger := UserSession.CurrentOrderID;
      Open;

      while not Eof do
        begin
          RowCount := RowCount + 1;
          Cell[RowCount - 1, 0].Text := FieldByName('PNAME').AsString;
          Cell[RowCount - 1, 0].Alignment := taLeftJustify;

          Cell[RowCount - 1, 1].Text := FieldByName('QUANTITY').AsString;
          Cell[RowCount - 1, 1].Alignment := taRightJustify;

          Cell[RowCount - 1, 2].Text := FormatFloat('###,###,###,##0.00', FieldByName('PPRICE').AsFloat);
          Cell[RowCount - 1, 2].Alignment := taRightJustify;

          Cell[RowCount - 1, 3].Text := FormatFloat('###,###,###,##0.00',
            FieldByName('QUANTITY').AsInteger * FieldByName('PPRICE').AsFloat);
          Cell[RowCount - 1, 3].Alignment := taRightJustify;

          LBigTotal := LBigTotal + FieldByName('QUANTITY').AsInteger * FieldByName('PPRICE').AsFloat;

          Next;
        end;
      Close;
    end;
  lblTotal.Caption := Format(cTotalFormat, [FormatFloat('###,###,###,##0.00', LBigTotal)]);
  lblTotal.Top := 20 + grdItems.Top + grdItems.RowCount * lcHeaderCellHeight;
end;

procedure TISFCheckOut.FormatGrid;
var
  f : Integer;
  g : Integer;
begin
  grdItems.RowCount := grdItems.RowCount + 1;
  for f := 0 to Pred(grdItems.RowCount) do
     for g := 0 to Pred(grdItems.ColumnCount) do
        if f in [0, Pred(grdItems.RowCount)] then
          grdItems.Cell[f, g].BGColor := lcHeaderColor
        else
          begin
           if f mod 2 = 0 then
              grdItems.Cell[f, g].BGColor := lcEvenColor
           else
              grdItems.Cell[f, g].BGColor := lcOddColor;

           grdItems.Cell[f,g].Height := IntToStr(lcCellHeight);
          end;
end;

end.
