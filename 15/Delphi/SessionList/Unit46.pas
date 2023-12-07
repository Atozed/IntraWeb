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
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
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
    // Retrieve the session list using GetList() method from TIWSessions class
    gSessions.GetList(LSessionList);

    // The session list contains a session of SessionIDs, not the actual session object.
    // You can obtain the session corresponding to a specific session Id, calling the TIWSessions.Execute() method
    // Execute() is a method that receives a SessionId as the first paramter, and an anonymous method as the second parameter
    // The anonymous method, when executed, will pass the aSession as the parameter. See below:
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

initialization
  TIWForm46.SetAsMainForm;

end.
