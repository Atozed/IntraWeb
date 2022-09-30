//
unit Threaded;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWControl, IWHTMLControls, IWCompButton,
  IWCompEdit, IWCompLabel, IWCompText, MenuFrame,
  IWCompExtCtrls, IWCompProgressBar, IWBaseControl, InGlobal,
  IWBaseComponent, IWVCLBaseControl, IWBaseHTMLComponent, IWBaseHTMLControl,
  IWBaseHTML40Component;

type
  TTestThread = class(TThread)
  private
    FPercentComplete: Integer;
    function GetPercentComplete: Integer;
  public
    constructor Create; reintroduce;
    destructor Destroy; override;
    procedure Execute; override;
    property PercentComplete: Integer read GetPercentComplete;
  end;

  TformThreaded = class(TIWAppForm)
    IWText1: TIWText;
    linkStart: TIWLink;
    IWTimer1: TIWTimer;
    lablPercentComplete: TIWLabel;
    linkStop: TIWLink;
    IWProgressBar1: TIWProgressBar;
    linkBack: TIWLink;
    procedure IWTimer1Timer(Sender: TObject);
    procedure linkStartClick(Sender: TObject);
    procedure linkStopClick(Sender: TObject);
    procedure linkBackClick(Sender: TObject);
  private
    FThread: TTestThread;
    procedure DoOnTerminate(Sender: TObject);
    procedure TerminateThread;
  public
  end;

implementation
{$R *.dfm}

uses
  IWForm,
  Main;

{ TTestThread }

constructor TTestThread.Create;
begin
  inherited Create(True);
  // Initialize your thread objects here
end;

destructor TTestThread.Destroy;
begin
  // destroy your thread objects here
  inherited;
end;

procedure TTestThread.Execute;
var
  i: Integer;
begin
  // Execute whatever you need to execute here and (optionally) increment the percentage of work done
  for i := 1 to 100 do begin
    AtomicIncrement(FPercentComplete);
    if Terminated then begin
      Exit;
    end;
    Sleep(1000);
  end;
end;

function TTestThread.GetPercentComplete: Integer;
begin
  Result := AtomicCmpExchange(FPercentComplete, 0, 0);
end;

procedure TformThreaded.IWTimer1Timer(Sender: TObject);
begin
  if FThread <> nil then begin
    IWProgressBar1.Percent := FThread.PercentComplete;
    lablPercentComplete.Caption := 'Percent Complete: ' + IntToStr(IWProgressBar1.Percent) + '%';
    if FThread.Terminated then begin
      linkStopClick(Sender);
    end;
  end;
end;

procedure TformThreaded.DoOnTerminate(Sender: TObject);
begin
  IWTimer1.Enabled := False;
end;

procedure TformThreaded.TerminateThread;
begin
  if Assigned(FThread) then
  begin
    FThread.Terminate;
    FThread.WaitFor;
    FreeAndNil(FThread);
  end;
end;

procedure TformThreaded.linkStartClick(Sender: TObject);
begin
  linkStart.Visible := False;
  linkBack.Visible := False;
  linkStop.Visible := True;
  IWTimer1.Enabled := True;
  FThread := TTestThread.Create;
  FThread.OnTerminate := DoOnTerminate;
  FThread.Start;
end;

procedure TformThreaded.linkStopClick(Sender: TObject);
begin
  linkStart.Visible := True;
  linkBack.Visible := True;
  linkStop.Visible := False;
  IWTimer1.Enabled := False;
  lablPercentComplete.Caption := 'Thread Stopped';
  TerminateThread;
end;

procedure TformThreaded.linkBackClick(Sender: TObject);
begin
  TerminateThread;
  Release;
  TformMain.Create(WebApplication).Show;
end;

end.
