unit uDisplayCategory;

interface                

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, frTopBar,
  frProductTree, Controls, Forms, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompRectangle, IWBaseHTMLControl;

type
  TISFDisplayCategory = class(TIWAppForm)
    TopBar: TISFTopBar;
    LeftTree: TISFProductTree;
    rectMain: TIWRectangle;
    procedure IWAppFormCreate(Sender: TObject);
  protected
     procedure DoLoadThumbnails;
     procedure DoOnProductClick(Sender: TObject);
     procedure DoAddToCart(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  DB, DBISAMTb,
  dmDieFlyDie,
  Graphics,
  IWBaseForm, IWColor, IWCompLabel, IWExtCtrls, IWHTMLControls,
  jpeg,
  ServerController,
  uDBInterface, uDisplayProduct, uShoppingCart;

procedure TISFDisplayCategory.DoAddToCart(Sender: TObject);
begin
  UpdateCart(UserSession.CartUserID, TIWLink(Sender).Tag);
  TISFShoppingCart.Create(WebApplication).Show;
  Release;
end;

procedure TISFDisplayCategory.DoLoadThumbnails;
const
  lcFirstCol = 40;
  lcSecondCol = 360;

  lcCellHeight = 100;
var
  LLeft,
  LTop : integer;

  LImage : TIWImage;
  LProductLink : TIWLink;
  LCartLink : TIWLink;
  LLabel : TIWLabel;
  LStream : TStream;
  LJPEGImage : TJPEGImage;
begin
  // Load the product in the current category
  with dmFly.qrCategoryProducts do
  begin
     Close;
     ParamByName('ACategoryID').AsInteger := UserSession.CurrentCategoryID;
     Open;

     LLeft := lcFirstCol;
     LTop := 60;

     while not Eof do
     begin
        LImage := TIWImage.Create(Self);
        with LImage do
        begin
           LStream := CreateBlobStream(FieldByName('Thumbnail'), bmRead);
           LJPEGImage := TJPEGImage.Create;
           try
              LJPEGImage.LoadFromStream(LStream);
              LImage.Picture.Assign(LJPEGImage);
           finally
              FreeAndNil(LStream);
              FreeAndNil(LJPEGImage);
           end;
           Parent := Self;
           Visible := TRUE;
           BorderOptions.Width := 1;
           BorderOptions.Color := clWebBlack;
           Tag := FieldByName('ID').AsInteger;
           Top := LTop + rectMain.Top;
           Left := LLeft + rectMain.Left;
           ZIndex := rectMain.ZIndex + 1;

           OnClick := DoOnProductClick;
        end;

        LProductLink := TIWLink.Create(Self);
        with LProductLink do
        begin
           RenderSize := False;
           Parent := Self; 
           Visible := TRUE;
           Top := LTop + RectMain.Top;
           Left := LImage.Left + LImage.Width + 10;
           Font.Style := [fsBold];
           Font.Size := 14;
           Tag := FieldByName('ID').AsInteger;
           Caption := FieldByName('Name').AsString;
           ZIndex := rectMain.ZIndex + 1;

           OnClick := DoOnProductClick;
        end;

        LLabel := TIWLabel.Create(Self);
        with LLabel do
        begin
           Parent := Self;
           Visible := TRUE;
           Top := LProductLink.Top + LProductLink.Height + 10;
           Left := LImage.Left + LImage.Width + 10;
           Font.Style := [fsItalic];
           Font.Size := 10;
           Caption := 'Special price: $' + FormatFloat('###,###,###,##0.00', FieldByName('Price').AsFloat);
           ZIndex := rectMain.ZIndex + 1;
        end;

        LCartLink := TIWLink.Create(Self);
        with LCartLink do
        begin
           RenderSize := False;
           Parent := Self;
           Visible := TRUE;
           Top := LLabel.Top + LLabel.Height + 10;
           Left := LImage.Left + LImage.Width + 10;
           Font.Color := clWebBlue;
           Tag := FieldByName('ID').AsInteger;
           Caption := 'Add to cart';
           ZIndex := rectMain.ZIndex + 1;
           OnClick := DoAddToCart;
        end;

        if LLeft = lcSecondCol then
        begin
           LLeft := lcFirstCol;
           LTop := LTop + lcCellHeight;
        end
        else
           LLeft := lcSecondCol;
        Next;
     end;
     Close;
  end;

end;

procedure TISFDisplayCategory.DoOnProductClick(Sender: TObject);
begin
  if Sender is TIWCustomControl then
  begin
     UserSession.CurrentProductID := TIWControl(Sender).Tag;
     TIWAppForm(WebApplication.ActiveForm).Release;
     TISFDisplayProduct.Create(WebApplication).Show;
  end;
end;

procedure TISFDisplayCategory.IWAppFormCreate(Sender: TObject);
begin
  // Load the left categories tree
  LeftTree.LoadTree;

  // Load category
  DoLoadThumbnails;
end;

end.
