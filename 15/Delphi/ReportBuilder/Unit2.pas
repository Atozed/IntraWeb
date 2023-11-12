unit Unit2;

interface

uses
  System.SysUtils, System.Classes, ppCtrls, ppStrtch, ppMemo, ppVar, ppPrnabl,
  ppClass, ppBands, ppCache, ppDB, Data.DB, Datasnap.DBClient, ppDBPipe,
  ppDesignLayer, ppParameter, ppComm, ppRelatv, ppProd, ppReport, ppTypes;

type
  TdmReport = class(TDataModule)
    rptBiolife: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    plBiolife: TppDBPipeline;
    cdsBiolife: TClientDataSet;
    dsBiolife: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBImage1: TppDBImage;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBText6: TppDBText;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppShape1: TppShape;
    ppShape2: TppShape;
  private
    { Private declarations }
    FFileName: string;
    procedure DoGenerateReport(const AOutputFileName: string);
  public
    { Public declarations }
    class procedure GenerateReport(const AOutputFileName: string);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  ActiveX;

{ TdmReport }

procedure TdmReport.DoGenerateReport(const AOutputFileName: string);
var
  dir: string;
begin
  FFileName := AOutputFileName;
  // create folder if it doesn't exist
  dir := ExtractFilePath(FFileName);
  if not ForceDirectories(dir) then
    raise Exception.Create('Could not create destination folder');
  // remove old file if it already exists
  if FileExists(FFileName) then
    DeleteFile(FFileName);

  rptBiolife.AllowPrintToFile := True;
  // The 2 settings below are absolutely required for IntraWeb applications:
  // No dialog or form should ever be shown in an IW app
  rptBiolife.ShowPrintDialog := False;
  rptBiolife.ShowCancelDialog := False;

  rptBiolife.DeviceType := dtPDF;
  rptBiolife.TextFileName := FFileName;
  rptBiolife.Print;
end;

class procedure TdmReport.GenerateReport(const AOutputFileName: string);
var
  dm: TdmReport;
begin
  dm := TdmReport.Create(nil);     // no need for any owner here. We are going to release it ourselvees
  try
    dm.DoGenerateReport(AOutputFileName);
  finally
    dm.Free;
  end;
end;

end.
