unit uSearch;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompRectangle, frTopBar, Controls, Forms,
  frProductTree, IWBaseHTMLControl;

type
  TISFSearch = class(TIWAppForm)
    LeftTree: TISFProductTree;
    rectMain: TIWRectangle;
    TopBar: TISFTopBar;
    procedure IWAppFormCreate(Sender: TObject);
    procedure ProductClick(Sender: TObject);
    procedure AddToCartClick(Sender: TObject);
  public
  protected
    procedure LoadProducts;
  end;

implementation
{$R *.dfm}

uses
  ServerController, dmDieFlyDie, jpeg, IWExtCtrls, IWCompLabel, IWHTMLControls ,
  DBISAMTb, uDIsplayProduct, DB, IWColor, uDBInterface, uSHoppingCart;

procedure TISFSearch.IWAppFormCreate(Sender: TObject);
begin
  LeftTree.LoadTree;
  LoadProducts;
end;

procedure TISFSearch.LoadProducts;
var
  LImage : TIWImage;
  LJpegImage : TJPEGImage;
  LStream : TStream;
  LLink : TIWLink ;
  LLabel : TIWLabel;
  LIndex : Integer;
  LLeft : INteger;
  LVerticalSpace : Integer;
  LUpper : Integer;
  LLeftMost : Integer;
begin
  LLeftMost := 30;
  with dmFly.qrSearch do
    begin
      CLose;
      SQL.Clear;
      SQL.Add('SELECT ID, NAME, THUMBNAIL, PRICE');
      SQL.Add('FROM PRODUCTS');
      if UserSession.SearchText <> '' then
        begin
          SQL.Add('WHERE NAME LIKE ''%' + UserSession.SearchText + '%''');
          SQL.Add('OR DESCRIPTION LIKE ''%' + UserSession.SearchText + '%''');
        end;
      SQL.Add('ORDER BY NAME');
      Open;
      LIndex := 0;
      LLeft := LeftTree.Width + 30 ;
      LVerticalSpace := TopBar.Height + 30;
      LUpper := 30 ;
      while (not EOF) and (LIndex <= RecordCount div 2) do
        begin
          LImage := TIWImage.Create(Self);
          with LImage do
            begin
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Top := LVerticalSpace + LUpper;
              Left := LLeft;
              Tag := FieldByName('ID').AsInteger;
              BorderWidth := 1;
              BorderOptions.Color := clWebBlack;
              BorderOptions.Width := 1;
              LStream := CreateBlobStream(FIeldByName('THUMBNAIL'), bmRead);
              LJpegImage := TJPEGImage.Create;
              try
                LJpegImage.LoadFromStream(LStream);
                Picture.Assign(LJpegImage);
              finally
                LJpegImage.Free;
                LStream.Free;
              end;
              LVerticalSpace := Top + Height + LUpper;
              OnClick := ProductClick;
              LIndex := LIndex + 1;
            end;

          LLink := TIWLink.Create(Self);
          with LLink do
            begin
              RenderSize := False;
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Caption := 'Add to cart';
              Tag := LImage.Tag;
              Top := LImage.Top + LImage.Height - Height;
              Left := LImage.Left + LImage.Width + 20;
              OnClick := AddToCartCLick;
              if (Left + Width > LLeftMost) then
                begin
                  LLeftMost := Left + Width;
                end;
            end;

          LLabel := TIWLabel.Create(Self);
          with LLabel do
            begin
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Caption := Format('Special Price: $%s', [FormatFloat('###,###,###,##0.00', FieldByName('PRICE').AsFloat)]);
              Top := LLink.Top - Height - 5;
              Left := LLink.Left;
              if (Left + Width > LLeftMost) then
                begin
                  LLeftMost := Left + Width;
                end;
            end;

          LLink := TIWLink.Create(Self);
          with LLink do
            begin
              RenderSize := False;
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Caption := FieldByName('NAME').AsString;
              Tag := LImage.Tag;
              Top := LLabel.Top - Height - 5 ;
              Left := LImage.Left + LImage.Width + 20;
              OnClick := ProductClick;
              if (Left + Width > LLeftMost) then
                begin
                  LLeftMost := Left + Width;
                end;
            end;

          Next;
        end;

      LVerticalSpace := TopBar.Height + 30;
      LLeft := LLeftMost + LLeft;
      while (not EOF) and (LIndex > RecordCount div 2) do
        begin
          LImage := TIWImage.Create(Self);
          with LImage do
            begin
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Top := LVerticalSpace + LUpper;
              Left := LLeft;
              Tag := FieldByName('ID').AsInteger;
              BorderWidth := 1;
              BorderOptions.Color := clWebBlack;
              BorderOptions.Width := 1;
              LStream := CreateBlobStream(FIeldByName('THUMBNAIL'), bmRead);
              LJpegImage := TJPEGImage.Create;
              try
                LJpegImage.LoadFromStream(LStream);
                Picture.Assign(LJpegImage);
              finally
                LJpegImage.Free;
                LStream.Free;
              end;
              LVerticalSpace := Top + Height + LUpper;
              OnClick := ProductClick;
              LIndex := LIndex + 1;
            end;

          LLink := TIWLink.Create(Self);
          with LLink do
            begin
              RenderSize := False;
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Caption := 'Add to cart';
              Tag := LImage.Tag;
              Top := LImage.Top + LImage.Height - Height;
              Left := LImage.Left + LImage.Width + 20;
              OnClick := AddToCartCLick;
            end;

          LLabel := TIWLabel.Create(Self);
          with LLabel do
            begin
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Caption := Format('Special Price: $%s', [FormatFloat('###,###,###,##0.00', FieldByName('PRICE').AsFloat)]);
              Top := LLink.Top - Height - 5;
              Left := LLink.Left;
            end;

          LLink := TIWLink.Create(Self);
          with LLink do
            begin
              RenderSize := False;
              Parent := Self;
              ZIndex := rectMain.ZIndex + 1;
              Caption := FieldByName('NAME').AsString;
              Tag := LImage.Tag;
              Top := LLabel.Top - Height - 5 ;
              Left := LImage.Left + LImage.Width + 20;
              OnClick := ProductClick;
            end;

          Next;
        end;
      CLose;
    end;
end;

procedure TISFSearch.ProductClick(Sender: TObject);
begin
  UserSession.CurrentProductID := TIWControl(Sender).Tag;
  TISFDisplayProduct.Create(WebApplication).Show;
  Release;
end;

procedure TISFSearch.AddToCartClick(Sender: TObject);
begin
  UserSession.CurrentProductID := TIWControl(Sender).Tag;
  UpdateCart(UserSession.CartUserID, UserSession.CurrentProductID);
  TISFShoppingCart.Create(WebApplication).Show;
  Release;
end;

end.
