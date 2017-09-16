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
  TDivState = (dsRed, dsGreen);

  TIWForm18 = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWMonitor1: TIWMonitor;
    MemoRegion: TIWRegion;
    memEventLog: TIWMemo;
    lblEventLog: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
  private
    FDiv1State,
    FDiv2State: TDivState;
    procedure AsyncSetClass(const ElementName, ClassName: string);
    procedure ToggleState;
    procedure Log(const s: string);
  public
  end;

implementation

{$R *.dfm}

const
  EOL = #13#10;

procedure TIWForm18.AsyncSetClass(const ElementName, ClassName: string);
var
  js: string;
begin
  js := 'var el = document.getElementById("' + ElementName + '");' + EOL +
        'if (el) {' + EOL +
        '  el.className = "' + ClassName + '";' + EOL +
        '}';
  WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA(js);
end;

procedure TIWForm18.IWAppFormCreate(Sender: TObject);
begin
  FDiv1State := dsRed;
  FDiv2State := dsGreen;

  // the IWMonitor component is responsible for sending requests to the IW application
  // It will send a new request at each 1000 milliseconds.
  IWMonitor1.Interval := 1000;
  // TargetValue is set to 100 (any arbitrary integer value can be used)
  // When IWApplication.Status.Value = 100, the IWMonitor will trigger the OnAsyncEvent event.
  // In this event (see below), we can do anything, just like any other AsyncEvent
  IWMonitor1.TargetValue := 100;
end;

procedure TIWForm18.IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
begin
  // when this event is triggered, means that our IWApplication.Status value = 100
  // In our simplified case, means that our WorkerThread is signaling us that something has changed
  // (e.g. some new data arrived and needs processing)
  // In our case, we will just toggle the led state (the green led becomes red, and the red one becomes green)

  // First, reset the Value back to 0
  WebApplication.Status.Value := 0;
  // Change the led state
  ToggleState;
  // by default, whenever the event is triggered, the monitor object gets disabled.
  // re-enable it, so it will continue monitoring
  IWMonitor1.Enabled := True;

  // log the event
  Log('IWMonitor triggered OnAsyncEvent');
end;

procedure TIWForm18.Log(const s: string);
begin
  memEventLog.Lines.Add(FormatDateTime('hh:nn:sss.zzz', Now) + ': ' + s);
end;

procedure TIWForm18.ToggleState;
begin
  if FDiv1State = dsRed then begin
    FDiv1State := dsGreen;
    AsyncSetClass('div1', 'green');
  end else begin
    FDiv1State := dsRed;
    AsyncSetClass('div1', 'red');
  end;

  if FDiv2State = dsRed then begin
    FDiv2State := dsGreen;
    AsyncSetClass('div2', 'green');
  end else begin
    FDiv2State := dsRed;
    AsyncSetClass('div2', 'red');
  end;
end;

initialization
  TIWForm18.SetAsMainForm;

end.
