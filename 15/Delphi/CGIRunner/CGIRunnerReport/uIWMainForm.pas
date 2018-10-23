unit uIWMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGradButton, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component,
  IWCompExtCtrls;

type
  TIWMainForm = class(TIWAppForm)
    IWGradButton1: TIWGradButton;
    IWModalWindow1: TIWModalWindow;
    procedure IWGradButton1AsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    procedure ShowPDF(const aFileName: string);
    procedure PrintReport;
  public
  end;

implementation

{$R *.dfm}

uses
  IWCGIRunner, IW.Common.AppInfo, IWAppCache;

{ TIWForm13 }

procedure TIWMainForm.PrintReport;
var
  CGIRunner: TIWCGIRunner;
  CGIModuleName: string;
  LFileName: string;
begin
  CGIModuleName := TIWAppInfo.GetAppPath + 'CGIReport.exe';
  CGIRunner := TIWCGIRunner.Create;
  try
    // Set the name of the CGI module which runs our report
    CGIRunner.CGIModule := CGIModuleName;
    // Create a new cache file and add the file name to custom fields.
    // Custom fields are sent to CGI application
    LFileName := TIWAppCache.NewTempFileName('.pdf');
    CGIRunner.CustomFields.Add('ReportFileName=' + LFileName);
    // We can add any other field to custom fields. For instance, a report index
    CGIRunner.CustomFields.Add('Report=1');
    // call the CGI application
    CGIRunner.Execute(WebApplication, WebApplication.Request);
    // Check status result. Zero indicates success. Anything else is an error
    if CGIRunner.StatusResult = 0 then
    begin
      ShowPDF(LFileName);
    end else
    begin
      WebApplication.ShowMessage('Error creating report: ' + CGIRunner.ErrorMessage);
    end;
  finally
    CGIRunner.Free;
  end;
end;

procedure TIWMainForm.IWGradButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  PrintReport;
end;

procedure TIWMainForm.ShowPDF(const aFileName: string);
begin
  with IWModalWindow1 do begin
    Reset;
    Autosize := False;
    Title := 'CGI report';
    Draggable := False;
    WindowWidth := 95;
    WindowHeight := 95;
    Src := aFileName;
    OnAsyncClick := nil;
    Show;
  end;
end;

initialization
  TIWMainForm.SetAsMainForm;

end.
