unit Unit25;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCanvas,
  IWChartJS, IWCompButton, IWCompLabel, IWBaseInterfaces;

type
  TIWForm25 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWChartJS1: TIWChartJS;
    IWChartJS2: TIWChartJS;
    IWChartJS4: TIWChartJS;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
    procedure RenderPieChart;
    procedure RenderLineChart;
    procedure Render2SeriesChart;
  end;

implementation

{$R *.dfm}

uses
  System.Diagnostics, IW.Common.StrBuilder;

{ TIWForm25 }

procedure TIWForm25.IWAppFormCreate(Sender: TObject);
begin
  RenderPieChart;
  RenderLineChart;
end;

procedure TIWForm25.RenderPieChart;
begin
  IWChartJS1.MainSeries.Add([55, 49, 44, 24, 15]);
  IWChartJS1.Labels.Add(['Italy', 'France', 'Spain', 'USA', 'Argentina']);
  IWChartJS1.MainSeries.Colors.Add([clWebRed, clWEBGreen, clWEBBlue, clWEBOrange, clWEBBrown]);
  IWChartJS1.ChartType := ctPie;
  IWChartJS1.Legend.Visible := True;
  IWChartJS1.Legend.Position := tpLeft;
  IWChartJS1.Title.Text := 'World Wine Production 2018';
  IWChartJS1.Title.Visible := True;
end;

procedure TIWForm25.RenderLineChart;
begin
  IWChartJS2.MainSeries.Add([7,8,8,9,9,9,10,11,14,14,15]);
  IWChartJS2.Labels.Add([50,60,70,80,90,100,110,120,130,140,150]);
  IWChartJS2.MainSeries.Colors.Add([clWEBBlue]);
  IWChartJS2.ChartType := ctLine;
  IWChartJS2.Legend.Visible := True;
  IWChartJS2.Legend.Title.Text := 'Sample data';
  IWChartJS2.Legend.Position := tpBottom;
  IWChartJS2.Title.Text := 'This is a line chart';
  IWChartJS2.Title.Visible := True;
end;

procedure TIWForm25.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  Render2SeriesChart;
end;

procedure TIWForm25.Render2SeriesChart;
var
  SecondSeries: TChartSeries;
begin
  IWChartJS4.Legend.Position := tpTop;

  IWChartJS4.ResetChart;

  IWChartJS4.MainSeries.Add([1340, 4641, 747, 592, 430, 42]);
  IWChartJS4.MainSeries.Text := 'Year 2020';
  IWChartJS4.MainSeries.SetRandomColors(1);

  // create a second series here
  SecondSeries := IWChartJS4.AddSeries(ctBar, 'Year 2050');
  SecondSeries.Add([2489, 5290, 710, 696, 491, 57]);
  SecondSeries.SetRandomColors(1);
  IWChartJS4.Labels.Add(['Africa', 'Asia', 'Europe', 'North America', 'South America', 'Oceania']);
  IWChartJS4.Title.Text := 'World Population by Continent';
  IWChartJS4.Title.Font.Color := clWebPurple;
  IWChartJS4.Title.Font.FontFamily := 'Verdana';
  IWChartJS4.Title.Font.PxSize := 16;
  IWChartJS4.SubTitle.Text := '2020 / 2050';
  IWChartJS4.SubTitle.Font.Color := clWebSalmon;
  IWChartJS4.SubTitle.Font.FontFamily := 'Courier';
  IWChartJS4.SubTitle.Font.PxSize := 12;
  IWChartJS4.Legend.Font.PxSize := 12;
  IWChartJS4.Legend.Font.Color := clWEBOrange;
  IWChartJS4.Legend.Font.FontFamily := 'Verdana';
  IWChartJS4.Legend.Title.Visible := False;
end;

initialization
  TIWForm25.SetAsMainForm;

end.
