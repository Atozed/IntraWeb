unit Unit1;

interface

uses
  //Delphi
  Forms,
  Controls,
  Graphics,
  Classes,
  ExtCtrls,
  SysUtils,
  Types,

  //InfraWeb
  IWAppForm,
  IWBaseControl,
  IWBaseHTMLControl,
  IWControl,
  IWVCLBaseControl,
  IWCompEdit,
  IWCompExtCtrls,

  // TeeChart
  Chart,
  Series,
  TeEngine,
  IWCompLabel,
  TeeProcs;


type
  TIWForm1 = class(TIWAppForm)
    IWImage1: TIWImage;
    IWEdit1: TIWEdit;
    Chart1: TChart;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWEdit2: TIWEdit;
    IWLabel3: TIWLabel;
    Series1: TLineSeries;
    procedure IWImage1AsyncMouseDown(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

uses
  Math;

{$R *.dfm}

// this method copies a TChart to an TIWImage
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

function SafeStrToInt(const s: string): Integer;
var
  FS: TFormatSettings;
begin
  FillChar(FS, SizeOf(FS), 0);
  FS.ThousandSeparator := ',';
  FS.DecimalSeparator := '.';
  Result := Trunc(StrToFloat(s, FS));
end;

function GetEventCoordinates(const aChart: TChart;
  const IWImage: TIWImage; const EventParams: TStringList): TPoint;
var
  lAbsoluteX : integer;
  lAbsoluteY : integer;
  lAxesXMin  : double;
  lAxesXMax  : double;
  lAxesYMin  : double;
  lAxesYMax  : double;
  lChartXMin : integer;
  lChartXMax : integer;
  lChartYMin : integer;
  lChartYMax : integer;
  lRelativeX : double;
  lRelativeY : double;
begin
  // absolute pixel coordinates relative to the TIWImage component
  lAbsoluteX := SafeStrToInt(EventParams.Values['x']);
  lAbsoluteY := SafeStrToInt(EventParams.Values['y']);

  // pixel coordinates of the chart axes within the TIWImage component
  lChartXMin := aChart.ChartRect.Left   + IWImage.BorderOptions.Width;
  lChartXMax := aChart.ChartRect.Right  + IWImage.BorderOptions.Width;
  lChartYMin := aChart.ChartRect.Bottom + IWImage.BorderOptions.Width;
  lChartYMax := aChart.ChartRect.Top    + IWImage.BorderOptions.Width;

  // relative coordinates relative to the chart rectangle
  lRelativeX := (lAbsoluteX - lChartXMin) / (lChartXMax - lChartXMin);
  lRelativeY := (lAbsoluteY - lChartYMin) / (lChartYMax - lChartYMin);

  // limit relative coordinates to within the plot
  lRelativeX := Min(1, Max(0, lRelativeX));
  lRelativeY := Min(1, Max(0, lRelativeY));

  lAxesXMin := aChart.Axes.Bottom.Minimum;
  lAxesXMax := aChart.Axes.Bottom.Maximum;
  lAxesYMin := aChart.Axes.Left.Minimum;
  lAxesYMax := aChart.Axes.Left.Maximum;

  // local coordinates
  Result.X := Round(lAxesXMin + lRelativeX*(lAxesXMax - lAxesXMin));
  Result.Y := Round(lAxesYMin + lRelativeY*(lAxesYMax - lAxesYMin));
end;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  CopyChartToImage(Chart1, IWImage1);
end;

procedure TIWForm1.IWImage1AsyncMouseDown(Sender: TObject; EventParams: TStringList);
var
  xPoint: TPoint;
begin
  xPoint := GetEventCoordinates(Chart1, IWImage1, EventParams);

  IWEdit1.Text := IntToStr(xPoint.X);
  IWEdit2.Text := IntToStr(xPoint.Y);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
