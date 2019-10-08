unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm1 = class(TIWAppForm)
    iwbtn1: TIWButton;
    IWMemo1: TIWMemo;
    procedure iwbtn1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure RunCGI;
  public
  end;

implementation

{$R *.dfm}

uses
  IWCGIRunner, IW.Common.AppInfo, IWAppCache, IWMimeTypes;

procedure TIWForm1.RunCGI;
var
  CGIRunner: TIWCGIRunner;
  CGIModuleName: string;
begin
  CGIModuleName := TIWAppInfo.GetAppPath + 'CGITest.bat';

  CGIRunner := TIWCGIRunner.Create;
  try
    CGIRunner.CGIModule := CGIModuleName;
    CGIRunner.Execute(WebApplication, WebApplication.Request);
    if CGIRunner.StatusResult = 0 then
    begin
      IWMemo1.Lines.AddStrings(CGIRunner.ResponseContent);
    end else
    begin
      WebApplication.ShowMessage('Error creating report: ' + CGIRunner.ErrorMessage);
    end;
  finally
    CGIRunner.Free;
  end;
end;

procedure TIWForm1.iwbtn1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  RunCGI;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
