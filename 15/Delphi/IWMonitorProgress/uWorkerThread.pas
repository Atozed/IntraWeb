unit uWorkerThread;

// this unit declares a TWorkerThread, a TIWTimedThread descendant class.
// In this simplified demo, it simulates some work and signals to each active session,
// changing the the Session's Status property. In a real world application, this
// thread could be connected to another server, reading the file system, waiting for some input
// from a network channel, whatever...

interface

uses
  SysUtils, Classes, IW.Common.Threads, IWApplication;

type
  TWorkerThread = class(TIWThreadBase)
  private
    FSession: TIWApplication;
  protected
    procedure DoExecute; override;
  public
    property Session: TIWApplication read FSession write FSession;
  end;

implementation

uses
  DateUtils;

{ TWorkerClass }

procedure TWorkerThread.DoExecute;
var
  PercentComplete: Integer;
begin
  PercentComplete := 0;
  repeat
    Sleep(100);
    if Terminated then
      Exit;
    Inc(PercentComplete);
    FSession.Status.Value := PercentComplete;
  until PercentComplete >= 100;
end;

end.
