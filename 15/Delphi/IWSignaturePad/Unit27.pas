unit Unit27;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCanvas, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, PngImage, IWCompLabel;

type
  TIWForm27 = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWSignaturePad1: TIWSignaturePad;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWLabel1: TIWLabel;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWSignaturePad1PngImageUploaded(Sender: TObject; aImage: TPngImage);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo;

procedure TIWForm27.IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  IWSignaturePad1.Download('MySignature.png');
end;

procedure TIWForm27.IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  IWSignaturePad1.Undo;
end;

procedure TIWForm27.IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  IWSignaturePad1.UploadPngImage;
end;

procedure TIWForm27.IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  IWSignaturePad1.ClearCanvas;
end;

procedure TIWForm27.IWSignaturePad1PngImageUploaded(Sender: TObject; aImage: TPngImage);
begin
  aImage.SaveToFile(TIWAppInfo.GetAppPath + 'uploaded_signature.png');
end;

initialization
  TIWForm27.SetAsMainForm;

end.
