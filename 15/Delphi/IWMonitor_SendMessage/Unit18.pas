unit Unit18;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls,
  IWCompLabel, IWCompEdit, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm18 = class(TIWAppForm)
    IWMonitor1: TIWMonitor;
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWEdit1AsyncKeyDown(Sender: TObject; EventParams: TStringList);
  private
    procedure NotifyAllSessions;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm18.IWAppFormCreate(Sender: TObject);
begin
  // the IWMonitor component is responsible for sending requests to the IW application
  // It will send a new request at each 2.5 seconds
  IWMonitor1.Interval := 2500;
  // TargetValue is set to 1 (any arbitrary integer value can be used)
  // When IWApplication.Status.Value = 1, the IWMonitor will trigger the OnAsyncEvent event.
  // In this event (see below), we can do anything, just like any other AsyncEvent
  IWMonitor1.TargetValue := 1;
end;

procedure TIWForm18.IWMonitor1AsyncEvent(Sender: TObject; EventParams: TStringList);
var
  TheMessage: string;
begin
  // First, reset the Value to 0
  WebApplication.Status.Value := 0;
  // by default, whenever the event is triggered, the monitor object gets disabled.
  // re-enable it, so it will continue monitoring
  IWMonitor1.Enabled := True;

  // Get the common message that we need to display
  TheMessage := IWServerController.SessionMessage;
  if TheMessage = '' then
    Exit;

  // Show it
  WebApplication.ShowMessage(TheMessage);
end;

procedure TIWForm18.NotifyAllSessions;
var
  i: Integer;
  thisSessionId: string;
begin
   thisSessionId := WebApplication.AppID;
  // This will run the annonymous procedure below for all existing sessions
  // For versions of IW before 15.5, you may need to remove the AData parameter below
  // in order to build this
  gSessions.Execute(procedure (ASession: TObject; AData: Pointer; var VContinue: Boolean)
                    var
                      LSession: TIWApplication absolute aSession;
                    begin
                      // Will send to all sessions except this
                      if not SameStr(LSession.AppID, thisSessionId) then
                        LSession.Status.Value := 1;
                    end);
end;

procedure TIWForm18.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // Set the message in ServerController
  IWServerController.SessionMessage := IWEdit1.Text;
  // clear the previous message from the input
  IWEdit1.Clear;
  // send the message
  NotifyAllSessions;
end;

procedure TIWForm18.IWEdit1AsyncKeyDown(Sender: TObject;
  EventParams: TStringList);
begin
  // Enable/Disable the Send button according to the content of IWEdit1
  IWButton1.Enabled := Trim(IWEdit1.Text) <> '';
end;

initialization
  TIWForm18.SetAsMainForm;

end.
