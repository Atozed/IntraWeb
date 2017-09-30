unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompListbox, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, IWCompLabel;

type
  TFormMain = class(TIWAppForm)
    buttonRefresh: TIWButton;
    buttonTerminate: TIWButton;
    buttonExit: TIWButton;
    listboxSessions: TIWListbox;
    IWLabel1: TIWLabel;
    procedure IWAppFormRender(Sender: TObject);
    procedure buttonRefreshClick(Sender: TObject);
    procedure buttonTerminateClick(Sender: TObject);
    procedure buttonExitClick(Sender: TObject);
  private
    procedure LoadData;
  public
  end;

implementation

{$R *.dfm}

uses UserSessionUnit, IWBaseForm;

{ TFormMain }

procedure TFormMain.LoadData;
var
  LSessions : TList;
  LSession : TIWApplication;
  i : Integer;
  LInfo : String;
begin
  listboxSessions.Items.Clear;

  LSessions := GSessions.LockList;
  try
    for i := 0 to Pred(LSessions.Count) do begin
      LSession := LSessions[i];

      // Lock and Unlock methods use a critical sesction that allows recursive
      // locking, thus we don't care if the current thread has already
      // locked the session object. 
      LSession.Lock;
      try
        if LSession = GGetWebApplicationThreadVar then begin
          LInfo := '* '
        end else begin
          LInfo := '';
        end;

        LInfo := LInfo + 'Client IP: ' + LSession.IP + ' Nickname: ' + (LSession.Data as TIWUserSession).Nickname;
        listboxSessions.Items.Add(Linfo + '=' + LSession.AppID);
      finally
        LSession.Unlock;
        LSession := nil;
      end;
    end;
  finally
    GSessions.UnLockList;
    // don't free the LSessions, the list is freed by UnLockList
  end;
end;

procedure TFormMain.IWAppFormRender(Sender: TObject);
begin
  LoadData;
end;

procedure TFormMain.buttonRefreshClick(Sender: TObject);
begin
;
end;

procedure TFormMain.buttonTerminateClick(Sender: TObject);
var
  LAppID : String;
  LSession : TIWApplication;
begin
  if listboxSessions.ItemIndex > -1 then begin
    LAppID := listboxSessions.Items.ValueFromIndex[listboxSessions.ItemIndex];

    // check if it's your own session
    if GGetWebApplicationThreadVar.AppID = LAppID then begin
      WebApplication.ShowMessage('You are trying to terminate your own session. To do so click the Exit button.');
    end else begin
      if not GSessions.Terminate(LAppID) then begin
        WebApplication.ShowMessage('Could not find the selected session.');
      end;
    end;
  end;
end;

procedure TFormMain.buttonExitClick(Sender: TObject);
begin
  WebApplication.Terminate('Goodbye!');
end;

end.
