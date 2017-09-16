unit Unit49;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  VCLTee.TeEngine, VCLTee.Series, Vcl.Controls, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompExtCtrls, Graphics, Types, IWCompLabel;

type
  TIWForm49 = class(TIWAppForm)
    IWImage1: TIWImage;
    Chart1: TChart;
    Series1: TBarSeries;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  GDIPApi, GDIPObj;

procedure CopyChartToImage(const aChart: TChart; const aImage: TIWImage);
var
  xMetaFile: TMetafile;
  xBitmap: TBitmap;
  xRect: TRect;
begin
  xBitmap := aImage.Picture.Bitmap;
  xBitmap.Width := aChart.Width;
  xBitmap.Height := aChart.Height;
  aImage.Width := aChart.Width;
  aImage.Height := aChart.Height;

  xRect := Rect(0, 0, aChart.Width, aChart.Height);
  aChart.BufferedDisplay := False;
  xMetaFile := aChart.TeeCreateMetafile(False, xRect);
  try
    xBitmap.Canvas.Draw(0, 0, xMetaFile);
  finally
    FreeAndNil(xMetaFile);
  end;
end;

procedure TIWForm49.IWAppFormCreate(Sender: TObject);
begin
  Chart1.Series[0].FillSampleValues(10);
  CopyChartToImage(Chart1, IWImage1);
end;

procedure GDIPlus_Initialize;
begin
  StartupInput.DebugEventCallback := nil;
  StartupInput.SuppressBackgroundThread := False;
  StartupInput.SuppressExternalCodecs := False;
  StartupInput.GdiplusVersion := 1;

  GdiplusStartup(gdiplusToken, @StartupInput, nil);
end;

procedure GDIPlus_Finalize;
begin
  if Assigned(GenericSansSerifFontFamily) then
    GenericSansSerifFontFamily.Free;
  if Assigned(GenericSerifFontFamily) then
    GenericSerifFontFamily.Free;
  if Assigned(GenericMonospaceFontFamily) then
    GenericMonospaceFontFamily.Free;
  if Assigned(GenericTypographicStringFormatBuffer) then
    GenericTypographicStringFormatBuffer.free;
  if Assigned(GenericDefaultStringFormatBuffer) then
    GenericDefaultStringFormatBuffer.Free;

  GdiplusShutdown(gdiplusToken);
end;

initialization
  GDIPlus_Initialize;
  TIWForm49.SetAsMainForm;

finalization
  GDIPlus_Finalize;

end.
