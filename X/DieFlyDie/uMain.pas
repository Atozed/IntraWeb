{
  ISwatFly main window

  This is the first page the user sees when accessing this application.
}

unit uMain;
                
interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWBaseControl, IWControl, IWCompButton, Forms, frProductTree,
  frTopBar, IWVCLBaseControl, IWCompRectangle, IWCompLabel,
  IWCompText, IWExtCtrls, IWBaseHTMLControl;

type
  TISFMain = class(TIWAppForm)
    rectMain: TIWRectangle;
    lblWelcome: TIWLabel;
    txtWelcome: TIWText;
    lblPopular: TIWLabel;
    rectPopular: TIWRectangle;
    imgProduct: TIWImage;
    txtTest: TIWText;
    LeftTree: TISFProductTree;
    TopBar: TISFTopBar;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lnkProductClick(Sender: TObject);
  public
  protected
    procedure LoadPopularProducts;
    procedure LoadWelcomeMessage;
    procedure LoadProductImage; 
  end;
  
type
  TISFMainClass = class of TISFMain;

implementation
{$R *.dfm}

uses
  uDisplayProduct,
  ServerController, dmDieFlyDie, IWHTMLControls, IWColor, Graphics,
  DBISAMTb, DB, IWBaseForm, jpeg;

procedure TISFMain.IWAppFormCreate(Sender: TObject);
begin

  LeftTree.LoadTree;
  LoadPopularProducts;
  LoadWelcomeMessage;
  LoadProductImage;

end;

procedure TISFMain.lnkProductClick(Sender: TObject);
begin

  UserSession.CurrentProductID := TIWLink(Sender).Tag;
  TISFDisplayProduct.Create(WebApplication).Show;
  Release;

end;

procedure TISFMain.LoadPopularProducts;
var
  LIndex : Integer;
  LTop : Integer;
  LLink : TIWLink;
  LHeight : Integer;

begin

  with dmFly.qrPopularProducts do
  begin
    Close;
    Open;
    LIndex := 0;
    LTop := lblPopular.Top + lblPopular.Height;
    while (not Eof) and (LIndex < 5) do
      begin
        LLink := TIWLink.Create(Self);
        LLink.RenderSize := False;
        LLink.Parent := Self;
        with LLink do
        begin
          Caption := FieldByName('PRODUCT_NAME').AsString;
          if (Length(Caption) > 30 ) then
            begin
              Caption := Copy(Caption, 1, 30);
              Caption := Caption + '[...]';
            end;
          Tag := FieldByName('PRODUCTID').AsInteger;
          Name := Format('lnkProduct%d', [Tag]);
          Left := lblPopular.Left;
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
          rectPopular.Height := rectPopular.Height + (LIndex + 1) * LHeight;
        Next;
      end;
     Close;
  end;

end;

procedure TISFMain.LoadProductImage;
var
  LStream : TStream;
  LJPEGImage : TJPEGImage;
  LLabel : TIWLabel;
begin
  with dmFly.qrImageProducts do
    begin
      Close;
      ParamByName('AId').AsInteger := 1;
      Open;
      if (not Eof) then
        begin
          LStream := CreateBlobStream(FieldByName('IMAGE'), bmRead);
          LJPEGImage := TJPEGImage.Create;
          try
            LJPEGImage.LoadFromStream(LStream);
            imgProduct.Picture.Assign(LJPEGImage);
          finally
            FreeAndNil(LStream);
            FreeAndNil(LJPEGImage);
          end;
          LLabel := TIWLabel.Create(Self);
          with LLabel do
            begin
              Parent := Self;
              Left := imgProduct.Left;
              Top := imgProduct.Top + imgProduct.Height + 10;
              AutoSize := true;
              Caption := 'Try this : ';
              ZIndex := rectMain.ZIndex + 1;
            end;
          with TIWLink.Create(Self) do
            begin
              RenderSize := False;
              Parent := Self;
              Left := LLabel.Left + LLabel.Width; //+ 5;
              Top := LLabel.Top;
              Caption := FieldByName('NAME').AsString;
              ZIndex := rectMain.ZIndex + 1;
              Tag := 1;
              OnClick :=  lnkProductClick;
              txtTest.Top := Top + Height + 10;
            end;
        end;
      Close;
    end;

end;

procedure TISFMain.LoadWelcomeMessage;
begin
  if UserSession.LoggedIn then
    begin
      with dmFly.qrWelcomeUsers do
        begin
          Close;
          ParamByName('UserEmail').AsString := UserSession.EMail;
          Open;
          if (not EOF) then
            begin
              lblWelcome.Caption := 'Welcome ' + FieldByName('FULLNAME').AsString;
            end;
          Close;
        end;
    end;
end;

initialization
  TISFMain.SetAsMainForm;
end.
