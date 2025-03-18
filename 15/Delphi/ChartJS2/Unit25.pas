unit Unit25;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCanvas,
  IWChartJS, IWCompButton, IWCompLabel, IWBaseInterfaces, IWCompText;

type
  TIWForm25 = class(TIWAppForm)
    IWChartJS2: TIWChartJS;
    IWText1: TIWText;
    IWChartJS1: TIWChartJS;
    IWText2: TIWText;
    procedure IWAppFormCreate(Sender: TObject);
  public
    procedure RenderPointChart;
    procedure RenderBarChart;
  end;

implementation

{$R *.dfm}

uses
  System.Diagnostics, IW.Common.StrBuilder;

{ TIWForm25 }

procedure TIWForm25.IWAppFormCreate(Sender: TObject);
begin
  RenderPointChart;
  RenderBarChart;
end;

procedure TIWForm25.RenderPointChart;
var
  Points: array of TPointI;
  i: Integer;
begin
  // generate 60 random points
  SetLength(Points, 60);
  for i := Low(Points) to High(Points) do
  begin
    Points[i].X := i*2;
    Points[i].Y := Random(85) + 5;
  end;

  // type of the chart
  IWChartJS1.ChartType := ctScatter;
  // add all points to our chart
  IWChartJS1.MainSeries.Add(Points);
  IWChartJS1.MainSeries.Fill := True;
  IWChartJS1.MainSeries.ShowLine := True;
  IWChartJS1.MainSeries.LineTension := 0.5;
  IWChartJS1.MainSeries.Colors.Add(clWebSKYBLUE, 0.5);
  IWChartJS1.MainSeries.PointColors.Add([clWebNavy, clWebOrange, clWebYellow, clWebGreen], 0.5);
  IWChartJS1.MainSeries.BorderWidth := 1;

  IWChartJS1.Legend.Visible := True;
  IWChartJS1.Legend.Title.Text := 'CPU Usage';
  IWChartJS1.Legend.Position := tpTop;
  IWChartJS1.Title.Text := 'CPU Usage, last 2 hours';
  IWChartJS1.Title.Visible := True;
  IWChartJS1.XScale.Visible := True;
  IWChartJS1.XScale.ScaleType := stDefault;
end;

procedure TIWForm25.RenderBarChart;
begin
  // add dates to labels. The date format should be yyyy-mm-dd (ISO 8601)
  IWChartJS2.Labels.Add(['2021-11-03', '2021-11-04', '2021-11-05', '2021-11-06',
                         '2021-11-07', '2021-11-08', '2021-11-09']);
  IWChartJS2.MainSeries.Add([18, 12, 6, 9, 12, 3, 9]);
  IWChartJS2.ChartType := ctBar;
  // set the X axis to use a time scale
  IWChartJS2.XScale.ScaleType := stTime;
  // the time scale used here is 'day'.

  IWChartJS2.XScale.TimeUnit := 'day';
  //the time scale is 'day'. It could also be
  {'millisecond'
  'second'
  'minute'
  'hour'
  'day'
  'week'
  'month'
  'quarter'
  'year'}

  // Set random colors use semi-transparent colors and a solid border which
  // creates a nice visual effect
  IWChartJS2.MainSeries.SetRandomColors;
  IWChartJS2.Legend.Position := tpTop;
end;

initialization
  TIWForm25.SetAsMainForm;

end.
