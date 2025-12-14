unit Unit11;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCanvas, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWCompExtCtrls, PngImage, Jpeg;

type
  TIWForm11 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWImage1: TIWImage;
    procedure SendToDesktopAppViaIPC;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  IWImageUtils, IWMailSlot;

procedure TIWForm11.IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  SendToDesktopAppViaIPC;
end;

procedure TIWForm11.SendToDesktopAppViaIPC;
var
  image: string;
  mailSlot: TIWMailslotClient;
begin
  // Converts the Png image into a base64 encoded string
  GraphicToBase64Str(IWImage1.Picture.Graphic, image);
  // Send the base64 string to the server via IPC
  mailSlot := TIWMailslotClient.Create('MyServer');
  try
    mailSlot.Write(image);
  finally
    mailSlot.Free;
  end;
end;

initialization
  TIWForm11.SetAsMainForm;

end.
