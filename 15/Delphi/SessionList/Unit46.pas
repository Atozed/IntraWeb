unit Unit46;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompMemo;

type
  TIWForm46 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3Click(Sender: TObject);
  private
    procedure GetSessionList;
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm46.GetSessionList;
var
  LSessionList: TStringList;
  i: Integer;
begin
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
          IWmemo1.Lines.Add('Session ID: ' + LSession.AppId + ' - Last access time: ' + DateTimeToStr(LSession.LastAccess));
        end
      );
    end;
  finally
    LSessionList.Free;
  end;
end;

procedure TIWForm46.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWMemo1.Lines.Clear;
  GetSessionList;
end;

procedure TIWForm46.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.Terminate('<!DOCTYPE html><html><head><title>Terminating</title></head><body>Terminated</body></html>');
end;

procedure TIWForm46.IWButton3Click(Sender: TObject);
begin
  Sleep(5000);
  WebApplication.Terminate('<!DOCTYPE html><html><head><title>Terminating</title></head><body>Terminated</body></html>');
end;

initialization
  TIWForm46.SetAsMainForm;

end.
