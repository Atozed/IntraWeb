//
unit ClientSideDataForm;
{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, Classes, IWControl,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}  
  IWCompDynamicChart, IWHTMLControls, IWCompDynamicChartLegend,
  IWCompButton, IWCompLabel, IWClientSideDataset, IWCompListbox,
  IWClientSideDatasetDBLink, IWClientSideDatasetBase, MenuFrame,
  IWDynGrid, IWCSStdCtrls, IWCompRectangle, IWBaseControl, IWBaseComponent,
  IWVCLBaseControl, IWBaseHTMLComponent, IWBaseHTMLControl,
  IWBaseHTML40Component;

type
  TformClientSideData = class(TIWAppForm)
    framMenu1: TframMenu;
    dsetStaticData: TIWClientSideDataset;
    IWCSNavigator1: TIWCSNavigator;
    IWCSLabel1: TIWCSLabel;
    IWCSLabel2: TIWCSLabel;
    IWCSLabel3: TIWCSLabel;
    IWCSLabel4: TIWCSLabel;
    IWCSLabel5: TIWCSLabel;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    dsetParts: TIWClientSideDatasetDBLink;
    IWCSNavigator2: TIWCSNavigator;
    IWCSLabel6: TIWCSLabel;
    IWLabel6: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

Uses
  {$IFDEF D5Pro}FDatamoduleD5Pro;{$ELSE}FDatamodule;{$ENDIF}

procedure TformClientSideData.IWAppFormCreate(Sender: TObject);
begin
  dsetParts.DataSource := FeaturesDM.dsrcParts;
end;

end.
