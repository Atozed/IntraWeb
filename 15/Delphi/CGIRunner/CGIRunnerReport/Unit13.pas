unit Unit13;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls;

type
  TIWMainForm = class(TIWAppForm)
    iwbtn1: TIWButton;
    IWModalWindow1: TIWModalWindow;
    procedure iwbtn1Click(Sender: TObject);
  private
    procedure PrintReport;
  public
  end;

implementation

{$R *.dfm}

uses
  IWCGIRunner, IW.Common.AppInfo, IWAppCache, IWMimeTypes;

{ TIWForm13 }

procedure TIWMainForm.PrintReport;
var
  CGIRunner: TIWCGIRunner;
  CGIModuleName: string;
  LFileName: string;
  HRef: string;
begin
  CGIModuleName := TIWAppInfo.GetAppPath + 'CGIReport.exe';

  CGIRunner := TIWCGIRunner.Create;
  try
    // Ask application cache for a new temp file name. This will be used as our PDF report
    LFileName := TIWAppCache.NewTempFileName('.pdf');

    // you can pass custom fields to your CGI application through CustomFields property
    // We are sending a report index and a file name. The file name is a cache file name
    // obtained from TIWAppCache above
    CGIRunner.CustomFields.Add('Report=1');
    CGIRunner.CustomFields.Add('ReportFileName=' + LFileName);

    CGIRunner.CGIModule := CGIModuleName;
    CGIRunner.Execute(WebApplication, WebApplication.Request);
    if CGIRunner.StatusResult = 0 then
    begin
      // add the report file to cache. Obtain a link (HREF) to the cache file
      HRef := TIWAppCache.AddFileToCache(WebApplication, LFileName, MIME_PDF);

      // set up a IWModalWindow so it will show our PDF report
      with IWModalWindow1 do begin
        Reset;
        Autosize := False;
        Title := 'CGI Report Demo';
        Draggable := False;
        WindowWidth := 95;
        WindowHeight := 95;
        Src := HRef;
        OnAsyncClick := nil;
        Show;
      end;
    end else
    begin
      WebApplication.ShowMessage('Error creating report: ' + CGIRunner.ErrorMessage);
    end;
  finally
    CGIRunner.Free;
  end;
end;

procedure TIWMainForm.iwbtn1Click(Sender: TObject);
begin
  PrintReport;
end;

initialization
  TIWMainForm.SetAsMainForm;

end.
