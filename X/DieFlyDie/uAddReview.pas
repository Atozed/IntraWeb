unit uAddReview;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWVCLBaseControl,
  IWBaseControl, IWControl, IWCompRectangle, frProductTree, Controls,
  Forms, frTopBar, IWCompLabel, IWExtCtrls, IWCompEdit, IWCompMemo,
  IWHTMLControls, IWCompRadioButton, IWBaseHTMLControl;

type
  TISFAddReview = class(TIWAppForm)
    TopBar: TISFTopBar;
    LeftTree: TISFProductTree;
    rectMain: TIWRectangle;
    rectLeft: TIWRectangle;
    rectTitle: TIWRectangle;
    lblProductName: TIWLabel;
    edName: TIWEdit;
    edEmail: TIWEdit;
    lblName: TIWLabel;
    lblEmail: TIWLabel;
    lblRating: TIWLabel;
    lblComments: TIWLabel;
    mmComments: TIWMemo;
    lnkSubmit: TIWLink;
    imgSearchText: TIWImageFile;
    imgRating5: TIWImageFile;
    imgRating4: TIWImageFile;
    imgRating2: TIWImageFile;
    imgRating3: TIWImageFile;
    imgRating1: TIWImageFile;
    rbRating5: TIWRadioButton;
    rbRating4: TIWRadioButton;
    rbRating3: TIWRadioButton;
    rbRating2: TIWRadioButton;
    rbRating1: TIWRadioButton;
    lblNameError: TIWLabel;
    lblEMailError: TIWLabel;
    lblCommentsError: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lnkSubmitClick(Sender: TObject);
    procedure rbRatingClick(Sender: TObject);
  public
  private
    FRatingValue : Integer;
    //
    function Validate : Boolean;
    procedure ClearErrorMessages;
    procedure LoadReviewImages;
  end;

implementation
{$R *.dfm}

uses
  dmDieFlyDie,
  ServerController,
  uDisplayProduct, DBISAMTb,
  uConstants;

procedure TISFAddReview.ClearErrorMessages;
begin
  lblNameError.Caption := '';
  lblEMailError.Caption := '';
  lblCommentsError.Caption := '';
end;

procedure TISFAddReview.IWAppFormCreate(Sender: TObject);
begin
  LeftTree.LoadTree;

  lblProductName.Caption := 'Add Review - ' + UserSession.CurrentProductName;
  FRatingValue := 4;  // the default value is 4
  ClearErrorMessages;  // for clarity, at design time the labels have caption <> ''
  LoadReviewImages;
end;

procedure TISFAddReview.lnkSubmitClick(Sender: TObject);
begin
  // Submit the review
  if Validate then
    begin
      with dmFly.qrInsertReview do
      begin
         Close;
{         SQL.Clear;
         SQL.Add('INSERT INTO Reviews(ProductID, Review, Rating, Name, EMail, Date)');
         SQL.Add('VALUES (:AProductID, :AReview, :ARating, :AName, :AEMail, :ADate)'); } 
         ParamByName('AProductID').AsInteger := UserSession.CurrentProductID;
         ParamByName('AReview').AsString := mmComments.Lines.Text;
         ParamByName('ARating').AsInteger := FRatingValue;
         ParamByName('AName').AsString := edName.Text;
         ParamByName('AEMail').AsString := edEmail.Text;
         ParamByName('ADate').AsDateTime := Time();
         ExecSQL;
      end;

      TISFDisplayProduct.Create(WebApplication).Show;
      Release;
    end;
end;

procedure TISFAddReview.rbRatingClick(Sender: TObject);
begin
  FRatingValue := TIWRadioButton(Sender).Tag;
end;

function TISFAddReview.Validate: Boolean;
begin
  ClearErrorMessages;
  Result := true;
  if Trim(edName.Caption) = '' then
    begin
      Result := false;
      lblNameError.Caption := '''Name'' must not be left blank.'
    end;
  if Trim(edEmail.Caption) = '' then
    begin
      Result := false;
      lblEMailError.Caption := '''EMail'' must not be left blank.'
    end;
  if Trim(mmComments.Text) = '' then
    begin
      Result := false;
      lblCommentsError.Caption := '''Comments'' must not be left blank.'
    end;
end;

procedure TISFAddReview.LoadReviewImages;
begin
  imgRating5.ImageFile.Filename := lcImageFiles[5];
  imgRating4.ImageFile.Filename := lcImageFiles[4];
  imgRating3.ImageFile.Filename := lcImageFiles[3];
  imgRating2.ImageFile.Filename := lcImageFiles[2];
  imgRating1.ImageFile.Filename := lcImageFiles[1];
end;

end.
