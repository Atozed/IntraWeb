//
unit ChartForm;
{PUBDIST}

interface

uses
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWAppForm, IWApplication, IWTypes, Classes, IWControl,
  IWCompDynamicChart, IWHTMLControls, IWCompDynamicChartLegend,
  IWCompButton, IWCompLabel, IWClientSideDataset, IWCompListbox,
  IWClientSideDatasetDBLink, IWClientSideDatasetBase, MenuFrame,
  IWBaseControl, IWVCLBaseControl, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTMLControl, IWBaseHTML40Component;

type
  TformChart = class(TIWAppForm)
    IWDynamicChartLegend1: TIWDynamicChartLegend;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWButton7: TIWButton;
    dsetStaticData: TIWClientSideDataset;
    cmboHorz: TIWComboBox;
    cmboVert: TIWComboBox;
    cmboData: TIWComboBox;
    IWLabel3: TIWLabel;
    dsetMaster: TIWClientSideDatasetDBLink;
    framMenu1: TframMenu;
    IWComboBox1: TIWComboBox;
    IWLabel4: TIWLabel;
    dsetOrder: TIWClientSideDatasetDBLink;
    dsetParts: TIWClientSideDatasetDBLink;
    DemoChart: TIWDynamicChart;
    procedure cmboDataChange(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  {$IFDEF D5Pro}FDatamoduleD5Pro;{$ELSE}FDatamodule;{$ENDIF}

procedure TformChart.cmboDataChange(Sender: TObject);
begin
  case cmboData.ItemIndex of
    0: DemoChart.Data := dsetStaticData;
    1: DemoChart.Data := dsetMaster;
    2: DemoChart.Data := dsetOrder;
    3: DemoChart.Data := dsetParts;
  end;
  DemoChart.Data.GetColumnNames(cmboHorz.Items);
  DemoChart.Data.GetColumnNames(cmboVert.Items);
  cmboHorz.ItemIndex := 0;
  DemoChart.HorzData := cmboHorz.Items[0];
  cmboVert.ItemIndex := 0;
  DemoChart.VertData := cmboVert.Items[0];
end;

procedure TformChart.IWAppFormCreate(Sender: TObject);
begin
  dsetMaster.DataSource := FeaturesDM.dsrcMaster;
  dsetOrder.DataSource := FeaturesDM.dsrcOrder;
  dsetParts.DataSource := FeaturesDM.dsrcParts;
  cmboDataChange(Sender);
end;

end.

