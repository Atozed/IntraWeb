unit uWorkerThread;

// this unit declares a TWorkerThread, a TIWTimedThread descendant class.
// In this simplified demo, it simulates some work and signals to each active session,
// changing the the Session's Status property. In a real world application, this
// thread could be connected to another server, reading the file system, waiting for some input
// from a network channel, whatever...

interface

uses
  SysUtils, Classes, IWThreads;

type
  TWorkerThread = class(TIWTimedThread)
  private
    FValue: Integer;
  protected
    procedure DoExecute; override;
  end;

implementation

uses
  IWApplication;

{ TWorkerClass }

// each time the worker thread runs it increments the FValue property.
// when FValue = 5, we signal to each active TIWApplication, setting its Status value property
// to some arbitrary value. In this case, lets say the value is 100.
// Once this thread is created with a 2000 milliseconds interval, this signaling will happen at each 10 seconds
procedure TWorkerThread.DoExecute;
var
  AList: TList;
  i: Integer;
  ASession: TIWApplication;
  xValue: Integer;
begin
  Inc(FValue);
  if FValue >= 5 then begin               // 5 means that we have to signal all sessions that we have some "new data"
    FValue := 0;                          // reset our counter
    AList := gSessions.LockList(False);   // get a list of all sessions, using a readonly lock
    try
      for i := 0 to AList.Count - 1 do begin
        ASession := TIWApplication(AList[i]);
        ASession.Status.Value := 100;     // sessions are prepared to understand this arbitrary value (100) as the signal that new data has arrived
      end;
    finally
      gSessions.UnLockList(AList);        // Unlock the list
    end;
  end;
end;

end.
