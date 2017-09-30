unit Unit1;

interface

uses
  Classes,
  SysUtils,
  IWAppForm,
  IWApplication,
  IWTypes,
  Controls,
  IWBaseControl,
  IWControl,
  IWCompButton,
  RpRender,
  RpRenderPDF,
  RpBase,
  RpSystem,
  RpDefine,
  RpRave,
  RpCon,
  RpConDS,
  DB,
  DBClient,
  IWGrids,
  IWDBGrids,
  IWDBStdCtrls,
  IWCompText, IWVCLBaseControl, IWCompEdit, RpFiler, IWCompLabel,
  IWBaseHTMLControl;

type
  TIWForm1 = class(TIWAppForm)
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    IWButton1: TIWButton;
    cdsEmployee: TClientDataSet;
    DataSource1: TDataSource;
    IWDBGrid1: TIWDBGrid;
    IWDBNavigator1: TIWDBNavigator;
    IWText1: TIWText;
    EditFilter: TIWEdit;
    IWButton2: TIWButton;
    IWLabel1: TIWLabel;
    IWButton3: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWDBGrid1Columns0Click(ASender: TObject;
      const AValue: string);
    procedure IWDBGrid1Columns0TitleClick(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure EditFilterSubmit(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController,
  IWGlobal,
  IWBaseForm,
  SyncObjs;
  

//Needed to serialize Rave'e Report generation
var GRaveLock: TCriticalSection;

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  LFile: string;
  LURL: string;
  LOptions: string;
  LWindowName: string;
  LrvConnection: TRvDataSetConnection;
begin
  //Prepare the Report-Engine
  RVProject1.ProjectFile := WebApplication.ApplicationPath + 'RaveDemo.rav';
  RvSystem1.DoNativeOutput := false;
  RvSystem1.RenderObject := RvRenderPDF1;

  LFile := 'Report.pdf';
  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup
  RvSystem1.OutputFileName := GServerController.FilesDir + WebApplication.AppID + PATHDELIM + LFile;
  //Make sure the directory exists
  ForceDirectories(ExtractFileDir(RvSystem1.OutputFileName));

  //  ***IMPORTANT***
  //  This demo uses a Direct Data View (DDV) which connects to a ClientDataSet
  //  to simplify the demo (no DB engine is needed), but DDV's are NOT thread safe.
  //  According to Jim Gunkel from Nevrona, only Driver Data Views are thread safe.
  //  To work with DDV's in multithreaded environments (such as IW), you have to
  //  serialize the report generation process and the TRvDataSetConnection has to
  //  be created and destroyed for each report.
  //  This approach may be used for other non-thread safe components as well, but
  //  you have to keep in mind that serialization is a potential bottleneck.

  GRaveLock.enter;
  LrvConnection := TRvDataSetConnection.Create(self);
  //Keep the serialized part as short as possible!
  try
    LrvConnection.Name := 'rvcEmployee';
    LrvConnection.DataSet := cdsEmployee;
    RvProject1.ExecuteReport('ReportEmp');
  finally // wrap up
    LrvConnection.Free;
    GRaveLock.leave;
  end; // try/finally

  //Prepare a popup window that shows the Report-PDF
  LWindowName := 'Report';
  LOptions := 'scrollbars=yes,width=400,height=600';
  //Serve the PDF from the virtual FilesNC directory to prevent browsers from caching it
  LURL := WebApplication.AppURLBase + '/filesNC/' + WebApplication.AppID + '/' + LFile;

  AddToInitProc('NewWindow("' + LURL + '", "' + LWindowName + '","' + LOptions + '");');
end;

procedure TIWForm1.IWDBGrid1Columns0Click(ASender: TObject;
  const AValue: string);
begin
  //Set the current record to the one clicked
  cdsEmployee.Locate('EmpNo', AValue, [])
end;

procedure TIWForm1.IWDBGrid1Columns0TitleClick(Sender: TObject);
begin
  //Sort the DataSet by the column clicked
  //This is quick'n dirty. You might use persistent indexes instead
  cdsEmployee.IndexFieldNames := TIWDBGridColumn(sender).DataField;
end;

procedure TIWForm1.IWButton2Click(Sender: TObject);
begin

  if (EditFilter.Text = '') or (EditFilter.Text = '< enter filter here >') then
  begin
    cdsEmployee.Filtered := false;
    activeControl := EditFilter;
    raise exception.create('Please enter a filter expression');
  end
  else
  begin
    cdsEmployee.Filter := EditFilter.Text;
    cdsEmployee.Filtered := true;
  end;

end;

procedure TIWForm1.EditFilterSubmit(Sender: TObject);
begin
  IWButton2Click(sender);
end;

procedure TIWForm1.IWButton3Click(Sender: TObject);
begin
  EditFilter.Text := '< enter filter here >';
  cdsEmployee.Filtered := false;
end;

initialization
  TIWForm1.SetAsMainForm;
  GRaveLock := TCriticalSection.Create;

finalization
  GRaveLock.Free;

end.

