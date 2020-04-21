unit Unit18;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls, IWCompLabel,
  IWCompMemo, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion;

type
  TIWForm18 = class(TIWAppForm)
    IWMonitor1: TIWMonitor;
    IWButton1: TIWButton;
    progressBar: TIWRegion;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
  end;

implementation

{$R *.dfm}

uses
  uWorkerThread;

procedure TIWForm18.IWAppFormCreate(Sender: TObject);
begin
  progressBar.Width := 0;
  IWLabel1.Caption := '';
end;

procedure TIWForm18.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  WorkerThread: TWorkerThread;
begin
  IWButton1.Enabled := False;
  progressBar.Width := 0;
  progressBar.Invalidate;  // force refresh
  IWLabel1.Caption := '';

  WebApplication.Status.Value := 0;
  IWMonitor1.Interval := 200;
  IWMonitor1.TargetValue := 100;
  IWMonitor1.Active := True;
  IWMonitor1.Enabled := True;

  WorkerThread := TWorkerThread.Create(WebApplication);
  WorkerThread.Start;
end;

procedure TIWForm18.IWMonitor1AsyncEvent(Sender: TObject;
  EventParams: TStringList);
begin
  IWLabel1.Caption := 'Process complete';
  IWButton1.Enabled := True;
end;

initialization
  TIWForm18.SetAsMainForm;

end.
