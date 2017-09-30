unit uOrderDetails;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, frProductTree,
  Controls, Forms, frTopBar, IWGrids, IWCompLabel, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompRectangle, IWBaseHTMLControl;

type
  TISFOrderDetails = class(TIWAppForm)
    rectMain: TIWRectangle;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblTitle: TIWLabel;
    grdItems: TIWGrid;
    lblTotal: TIWLabel;
    TopBar: TISFTopBar;
    LeftTree: TISFProductTree;
    lblOrderName: TIWLabel;
    lblOrderDate: TIWLabel;
    lblShipDate: TIWLabel;
    lblOrderNameVal: TIWLabel;
    lblOrderDateVal: TIWLabel;
    lblShipDateVal: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  protected
    procedure LoadOrderDetails;
  end;

implementation
{$R *.dfm}

uses
  ServerController, dmDieFlyDie, IWForm, DBISAMTb, DB,
  uConstants, Graphics;

{ TISFOrderDetails }

procedure TISFOrderDetails.LoadOrderDetails;
var
  LBigTotal : Double;
  LSmallTotal : Double;
  f : Integer;
  g : Integer; 
begin
  // load order details
  lblOrderNameVal.Caption := IntToStr(UserSession.CurrentOrderID);
  lblOrderDateVal.Caption := DateTimeToStr(UserSession.CurrentOrderDate);
  lblShipDateVal.Caption := DateTimeToStr(UserSession.CurrentOrderShipDate);

  with dmFly.qrOrderDetails, grdItems do
    begin
      // query the BD
      Close;
      ParamByName('AOrderID').AsInteger := UserSession.CurrentOrderID;
      Open;

      // format the grid
      RowCount := 1;

      Cell[0, 0].Width := '40%';
      Cell[0, 0].Text := 'Product Name';

      Cell[0, 1].Width := '20%';
      Cell[0, 1].Text := 'Price';

      Cell[0, 2].Width := '20%';
      Cell[0, 2].Text := 'Quantity';

      Cell[0, 3].Width := '20%';
      Cell[0, 3].Text := 'Subtotal';

      for f := 0 to grdItems.ColumnCount - 1 do
      begin
        Cell[0, f].Font.Style := [fsBold];
        Cell[0, f].Alignment := taCenter;
        Cell[0, f].Height := IntToStr(lcHeaderCellHeight);
      end;

      LBigTotal := 0 ;
      while not Eof do
        begin
          RowCount := RowCount + 1;
          Cell[RowCount - 1, 0].Text := FieldByName('PNAME').AsString;
          Cell[RowCount - 1, 0].Alignment := taLeftJustify;

          LSmallTotal := FieldByName('PPRICE').AsFloat;
          Cell[RowCount - 1, 1].Text := FLoatToStr(LSmallTotal);
          Cell[RowCount - 1, 1].Alignment := taRightJustify;

          Cell[RowCount - 1, 2].Text := FieldByName('QUANTITY').AsString;
          Cell[RowCount - 1, 2].Alignment := taRightJustify;
          LSmallTotal := LSmallTotal * StrToInt(Cell[RowCount - 1, 2].Text);

          Cell[RowCount - 1, 3].Text := FloatToStr(LSmallTotal);
          Cell[RowCount - 1, 3].Alignment := taRightJustify;
          LBigTotal := LBigTotal + LSmallTotal;

          Next;
        end;

      Close;
    end;

   // Set colors
  for f := 0 to Pred(grdItems.RowCount) do
     for g := 0 to Pred(grdItems.ColumnCount) do
        if f in [0, Pred(grdItems.RowCount)] then
           grdItems.Cell[f, g].BGColor := lcHeaderColor
        else
           if f mod 2 = 0 then
              grdItems.Cell[f, g].BGColor := lcEvenColor
           else
              grdItems.Cell[f, g].BGColor := lcOddColor;

  lblTotal.Top := grdItems.Top + grdItems.RowCount * lcCellHeight + 10;
  lblTotal.Caption := Format(cTotalFormat, [FormatFloat('###,###,###,##0.00', LBigTotal)]);
end;

procedure TISFOrderDetails.IWAppFormCreate(Sender: TObject);
begin
  LeftTree.LoadTree;
  LoadOrderDetails;
end;

end.
