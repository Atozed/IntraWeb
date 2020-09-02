unit uWorkerThread;

// this unit declares a TWorkerThread, a TIWTimedThread descendant class.
// In this simplified demo, it simulates some work and signals to each active session,
// changing the the Session's Status property. In a real world application, this
// thread could be connected to another server, reading the file system, waiting for some input
// from a network channel, whatever...

interface

uses
  SysUtils, Classes, IW.Common.Threads;

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
  LSessionList: TStringList;
  i: Integer;
begin
  Inc(FValue);
  if FValue < 5 then Exit;

                    // >= 5 means that we have to signal all sessions that we have some "new data"
  FValue := 0;      // reset our counter

  // First, create a session list to hold the session IDs
  LSessionList := TStringList.Create;
  try
    gSessions.GetList(LSessionList);
    for i := 0 to LSessionList.Count - 1 do begin
      gSessions.Execute(LSessionList[i],
        procedure(aSession: TObject)
        var
          LSession: TIWApplication absolute aSession;
        begin
          LSession.Status.Value := 100;
        end
      );
    end;
  finally
    LSessionList.Free;
  end;
end;

end.
