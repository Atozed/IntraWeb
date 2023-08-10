unit Unit41;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCanvas,
  IWCompButton, Jpeg, PngImage, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWHTMLControls;

type
  TIWForm41 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton3: TIWButton;
    IWButton5: TIWButton;
    IWButton4: TIWButton;
    IWImageLoader1: TIWImageLoader;
    IWLink1: TIWLink;
    IWButton2: TIWButton;
    IWButton6: TIWButton;
    IWButton7: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton5AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWImageLoader1JpgImageUploaded(Sender: TObject;
      aImage: TJPEGImage);
    procedure IWImageLoader1PngImageUploaded(Sender: TObject;
      aImage: TPngImage);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton6AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWImageLoader1DataURLReceived(Sender: TObject;
      const aData: string);
    procedure IWButton7AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm41.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.Download('MyImage.png');
end;

procedure TIWForm41.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.ToDataURL;
end;

procedure TIWForm41.IWButton5AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.UploadJpgImage(100);
end;

procedure TIWForm41.IWImageLoader1JpgImageUploaded(Sender: TObject;
  aImage: TJPEGImage);
begin
  // save the image to file here with:
  //aImage.SaveToFile('youruploadedimage.jpg');
end;

procedure TIWForm41.IWImageLoader1PngImageUploaded(Sender: TObject;
  aImage: TPngImage);
begin
  // save the image to file here with:
  //aImage.SaveToFile('youruploadedimage.png');
end;

procedure TIWForm41.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.ClearCanvas();
end;

procedure TIWForm41.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.StartCropper;
end;

procedure TIWForm41.IWButton6AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.StopCropper;
end;

procedure TIWForm41.IWImageLoader1DataURLReceived(Sender: TObject;
  const aData: string);
begin
  IWImageLoader1.LoadFromDataUrl(aData);
end;

procedure TIWForm41.IWButton7AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWImageLoader1.Crop;
end;

initialization
  TIWForm41.SetAsMainForm;

end.
