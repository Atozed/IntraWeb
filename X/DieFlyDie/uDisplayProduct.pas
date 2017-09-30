 unit uDisplayProduct;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  IWCompMemo, Controls, IWBaseControl, IWControl, IWExtCtrls, IWCompText,
  IWCompRectangle, Forms, IWContainer, IWRegion, frProductTree,
  frTopBar, IWCompButton, IWHTMLTag, IWVCLBaseControl,
  IWHTMLControls, IWBaseHTMLControl;

type
  TISFDisplayProduct = class(TIWAppForm)
    rectMain: TIWRectangle;
    lblPrice: TIWLabel;
    mmProductDescription: TIWMemo;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblProductName: TIWLabel;
    rectReviews: TIWRectangle;
    lblReviews: TIWLabel;
    lnkCart: TIWLink;
    imgProduct: TIWImage;
    lnkReview: TIWLink;
    lblProducts: TIWLabel;
    rectProducts: TIWRectangle;
    LeftTree: TISFProductTree;
    TopBar: TISFTopBar;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lnkCartClick(Sender: TObject);
    procedure lnkReviewClick(Sender: TObject);
    procedure lnkProductClick(Sender: TObject);
  protected
     FProductName : string;
     FProductImage : string;
     FProductDescription : string;
     FProductPrice : double;

     procedure LoadCurrentProduct;
     procedure LoadReviews;
     procedure LoadProducts;
  end;

implementation
{$R *.dfm}

uses
  dmDieFlyDie,
  Graphics,
  jpeg,
  uAddReview, uDBInterface, uShoppingCart,
  ServerController, DB,
  IWColor, DBISAMTb;

procedure TISFDisplayProduct.IWAppFormCreate(Sender: TObject);
begin

  // Load the tree
  LeftTree.LoadTree;

  // Load the current product
  LoadCurrentProduct;

  // Load the reviews for the current product
  LoadReviews;

  //Load another products
  LoadProducts;

end;

procedure TISFDisplayProduct.LoadCurrentProduct;
var
  LStream : TStream;
  LJPEGImage : TJPEGImage;

  function BestIndex(AString : string; AStart, AEnd : Integer) : Integer;
  begin
    Result := AEnd;
    while (AEnd > AStart) and (AString[AEnd] <> ' ') do
      Dec(AEnd);
    if AEnd <> AStart then
      Result := AEnd;
  end;

  procedure FillDescription(AList : TStringList; ADescription : string; ALength : Integer);
  var
    LIndex : Integer;
    LCount : Integer;
    LBestIndex : Integer;
  begin
    AList.Clear;
    LCount := Length(ADescription);
    LIndex := 1;
    while LIndex + ALength < LCount do
      begin
        LBestIndex := BestIndex(ADescription, LIndex, LIndex + ALength);
        AList.Add(Copy(ADescription, LIndex, LBestIndex - LIndex));
        LIndex := LBestIndex + 1;
      end;
    AList.Add(Copy(ADescription, LIndex, LCount - LIndex + 1));
  end;

begin
  // Load the product information from the database
  with dmFly.qrDisplayProducts do
  begin
     Close;
     ParamByName('AID').AsInteger := UserSession.CurrentProductID;
     Open;

     // This query should always return one row, but....
     if not IsEmpty then
     begin
        lblProductName.Caption := FieldByName('Name').AsString;
        UserSession.CurrentProductName := FieldByName('Name').AsString;
        lblPrice.Caption := Format('Your price: $%s', [FormatFloat('###,###,###,##0.00', FieldByName('Price').AsFloat)]);
        FillDescription(mmProductDescription.Lines, FieldByName('Description').AsString, 40);

        with imgProduct do
        begin
           LStream := CreateBlobStream(FieldByName('Image'), bmRead);
           LJPEGImage := TJPEGImage.Create;
           try
              LJPEGImage.LoadFromStream(LStream);
              Picture.Assign(LJPEGImage);
           finally
              FreeAndNil(LStream);
              FreeAndNil(LJPEGImage);
           end;
        end;
     end;
  end;
end;

procedure TISFDisplayProduct.lnkCartClick(Sender: TObject);
begin
  UpdateCart(UserSession.CartUserID, UserSession.CurrentProductID);
  TISFShoppingCart.Create(WebApplication).Show;
  Release;
end;

procedure TISFDisplayProduct.LoadReviews;
const
  lcImageFiles : array [1..5] of string =
     ('reviewrating1.gif', 'reviewrating2.gif', 'reviewrating3.gif', 'reviewrating4.gif', 'reviewrating5.gif');

  lcLeft = 230;
var
  LTop : integer;
  LLabel : TIWLabel;
  LImage : TIWImageFile;
  LMemo : TIWMemo;
begin
  with dmFly.qrReviews do
  begin
     Close;
     ParamByName('AProductID').AsInteger := UserSession.CurrentProductID;
     Open;

     LTop := lnkReview.Top + lnkReview.Height + 10;

     while not Eof do
     begin
        LLabel := TIWLabel.Create(Self);
        with LLabel do
        begin
           Font.Style := [fsBold];
           Font.Size := 9;
           Caption := FieldByName('Name').AsString + ' (' + FieldByName('EMail').AsString + ') ' + ' says... ';
           Top := LTop;
           AutoSize := TRUE;
           Left := lcLeft;
           ZIndex := 1;
           Visible := TRUE;
           Parent := Self;
        end;

        LImage := TIWImageFile.Create(Self);
        with LImage do
        begin
           Top := LTop;
           Left := lcLeft + 400;
           ZIndex := 1;
           AutoSize := TRUE;
           UseSize := FALSE;
           ImageFile.Filename := lcImageFiles[FieldByName('Rating').AsInteger];
           Visible := TRUE;
           Parent := Self;
        end;

        LTop := LTop + LLabel.Height + 10;

        LMemo := TIWMemo.Create(Self);
        with LMemo do
        begin
           Top := LTop;
           Left := lcLeft;
           Width := 600;
           Height := 30;
           Lines.Clear;
           Lines.Add(FieldByName('Review').AsString);
           ZIndex := 1;
           Editable := FALSE;
           ExtraTagParams.Add('border = 0');
           Visible := TRUE;
           Parent := Self;
        end;

        LTop := LTop + LMemo.Height + 10;

        Next;
     end;
     Close;
  end;

  if LTop > Height then
     Height := LTop;
end;

procedure TISFDisplayProduct.lnkReviewClick(Sender: TObject);
begin
  // Add a review
  TISFAddReview.Create(WebApplication).Show;
  Release;
end;

procedure TISFDisplayProduct.LoadProducts;
var
  LIndex : Integer;
  LTop : Integer;
  LLink : TIWLink;
  LHeight : Integer;
begin

  with dmFly.qrRelatedProducts do
  begin
    Close;
    ParamByName('AID').AsInteger := UserSession.CurrentProductID;
    Open;
    LIndex := 0;
    LTop := lblProducts.Top + lblProducts.Height;
    while (not Eof) and (LIndex < 5) do
      begin
        LLink := TIWLink.Create(Self);
        LLink.RenderSize := False;
        LLink.Parent := Self;
        with LLink do
        begin
          Caption := FieldByName('PNAME').AsString;
          if (Length(Caption) > 30 ) then
            begin
              Caption := Copy(Caption, 1, 30);
              Caption := Caption + '[...]';
            end;
          Tag := FieldByName('PID').AsInteger;
          Name := Format('lnkProduct%d', [Tag]);
          Left := lblProducts.Left;
          Top := LTop;
          OnClick := lnkProductClick;
          Font.FontName := 'Verdana';
          Font.Color := clWebBLACK;
          Font.Size := 10;
          Font.Style := [fsBold];
          LTop := LTop + Height + 2;
          ZIndex := Self.rectMain.ZIndex + 2;
          LHeight := LLink.Height;
        end;
          rectProducts.Height := rectProducts.Height + (LIndex + 1) * LHeight;
        Next;
      end;
     Close;
  end;
end;

procedure TISFDisplayProduct.lnkProductClick(Sender: TObject);
begin
  UserSession.CurrentProductID := TIWLink(Sender).Tag;
  TISFDisplayProduct.Create(WebApplication).Show;
  Release;
end;

end.
