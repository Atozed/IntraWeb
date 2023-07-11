unit Unit18;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls, IWCompLabel,
  IWCompMemo, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion, IWCompProgressBar, uWorkerThread, IWCompRectangle;

type
  TIWForm18 = class(TIWAppForm)
    IWMonitor1: TIWMonitor;
    IWButton1: TIWButton;
    IWModalWindow1: TIWModalWindow;
    IWProgressBar2: TIWProgressBar;
    btnCancel: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure btnCancelAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
  private
    procedure TerminateThread;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm18.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  btnCancel.Visible := True;
  btnCancel.Caption := 'Cancel';
  WebApplication.Status.Value := 0;
  IWProgressBar2.Percent := 0;
  IWProgressBar2.Visible := True;
  IWMonitor1.Enabled := True;
  UserSession.StartWorkerThread;
end;

procedure TIWForm18.TerminateThread;
begin
  btnCancel.Visible := False;
  IWMonitor1.Enabled := False;
  IWProgressBar2.Percent := 0;
  IWProgressBar2.Visible := False;
  UserSession.TerminateWorkerThread;
end;

procedure TIWForm18.btnCancelAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  TerminateThread;  // thread is being cancelled here
  WebApplication.ShowMessage('Task cancelled');
end;

procedure TIWForm18.IWMonitor1AsyncEvent(Sender: TObject;
  EventParams: TStringList);
begin
  TerminateThread;  // thread already executed till completion
  WebApplication.ShowMessage('Task complete');
end;

initialization
  TIWForm18.SetAsMainForm;

end.
