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
  SyncObjs, IWCompExtCtrls, IWCompProgressBar, IWBaseControl, InGlobal,
  IWBaseComponent, IWVCLBaseControl, IWBaseHTMLComponent, IWBaseHTMLControl,
  IWBaseHTML40Component;

type
  TTestThread = class(TThread)
  private
    FLock: TCriticalSection;
    FPercentComplete: Integer;
    //
    function GetPercentComplete: Integer;
  public
    constructor Create; reintroduce;
    destructor Destroy; override;
    procedure Execute; override;
    //
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
  protected
    FThread: TTestThread;
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
  inherited Create(False);
  FLock := TCriticalSection.Create;
end;

destructor TTestThread.Destroy;
begin
  FreeAndNil(FLock);
  inherited;
end;

procedure TTestThread.Execute;
var
  i: Integer;
begin
  for i := 1 to 100 do begin
    FLock.Enter; try
      Inc(FPercentComplete);
    finally FLock.Leave; end;
    if Terminated then begin
      Exit;
    end;
    Sleep(1000);
  end;
  Terminate;
end;

function TTestThread.GetPercentComplete: Integer;
begin
  FLock.Enter; try
    Result := FPercentComplete;
  finally FLock.Leave; end;
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

procedure TformThreaded.linkStartClick(Sender: TObject);
begin
  linkStart.Visible := False;
  linkBack.Visible := False;
  linkStop.Visible := True;
  IWTimer1.Enabled := True;
  FThread := TTestThread.Create;
end;

procedure TformThreaded.linkStopClick(Sender: TObject);
begin
  linkStart.Visible := True;
  linkBack.Visible := True;
  linkStop.Visible := False;
  IWTimer1.Enabled := False;
  lablPercentComplete.Caption := 'Thread Stopped';
  FThread.Terminate;
  FThread.WaitFor;
  FreeAndNil(FThread);
end;

procedure TformThreaded.linkBackClick(Sender: TObject);
begin
  Release;
  TformMain.Create(WebApplication).Show;
end;

end.
