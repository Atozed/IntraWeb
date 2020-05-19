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
    IWMemo1: TIWMemo;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  private
    procedure NotifyOtherSessions(const ACurrentSessionID: string);
  end;

implementation

{$R *.dfm}

procedure TIWForm18.IWAppFormCreate(Sender: TObject);
begin
  IWMonitor1.Interval := 1000;
  IWMonitor1.TargetValue := 1;
  IWMonitor1.Active := True;
  IWMonitor1.Enabled := True;
end;

procedure TIWForm18.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  i: Integer;
begin
  // do anything here
  for i := 1 to 1000 do
  begin
    Sleep(0);
  end;

  NotifyOtherSessions(WebApplication.AppID);
end;

procedure TIWForm18.IWMonitor1AsyncEvent(Sender: TObject;
  EventParams: TStringList);
begin
  IWMemo1.Lines.Add('Some other session completed some work');

  WebApplication.Status.Value := 0; // reset the Status value so we can be notified again
  IWMonitor1.Active := True;        // turn on the monitor again!
  IWMonitor1.Enabled := True;
end;

procedure TIWForm18.NotifyOtherSessions(const ACurrentSessionID: string);
var
  LSessionList: TStringList;
  i: Integer;
begin
  // First, create a session list to hold the session IDs
  LSessionList := TStringList.Create;
  try
    gSessions.GetList(LSessionList);
    for i := 0 to LSessionList.Count - 1 do
    begin
      if LSessionList.Strings[i] <> ACurrentSessionID then    // notify all sessions, except our own session
      begin
        gSessions.Execute(LSessionList[i],
          procedure(aSession: TObject)
          var
            LSession: TIWApplication absolute aSession;
          begin
            LSession.Status.Value := 1;
          end
        );
      end;
    end;
  finally
    LSessionList.Free;
  end;
end;

initialization
  TIWForm18.SetAsMainForm;

end.
