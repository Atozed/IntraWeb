unit uWorkerThread;

interface

uses
  SysUtils, Classes, IWApplication, IW.Common.Threads;

type
  TWorkerThread = class(TThread)
  private
    FPercentDone: Integer;
    FSession: TIWApplication;
  public
    procedure Execute; override;
    constructor Create(ASession: TIWApplication);
  end;

implementation

{ TWorkerClass }

constructor TWorkerThread.Create(ASession: TIWApplication);
begin
  inherited Create(True);   // always create it suspended
  FreeOnTerminate := True;
  FSession := ASession;
end;

procedure TWorkerThread.Execute;
begin
  FPercentDone := 0;
  repeat
    Sleep(200);
    Inc(FPercentDone);    // it will take approx 20 secs to run to completion
    FSession.Status.Value := FPercentDone;
  until Terminated or (FPercentDone = 100);
end;

end.
