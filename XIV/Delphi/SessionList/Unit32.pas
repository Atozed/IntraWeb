unit Unit32;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm32 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1Click(Sender: TObject);
  private
    procedure CheckSessions;
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm32.CheckSessions;
var
  i: integer;
  xList: TList;
  App: TIWApplication;
  S: string;
begin
  IWMemo1.Clear;
  xList := GSessions.LockList(False);
  IWMemo1.Lines.Add('ACTIVE SESSIONS=' + IntToStr(xList.Count) + '.');
  try
    for i := 0 to xList.Count - 1 do
    begin
      App := TIWApplication(xList[i]);
      S := IntToStr(i + 1) + '. ' + DateTimeToStr(App.SessionTimeStamp) +
        '. LastAccess=' + DateTimeToStr(App.LastAccess) + '. IP=' + App.IP + '. Browser=' + App.Browser.BrowserName + '.';
      IWMemo1.Lines.Add(S);
    end;
  finally
    GSessions.UnLockList(xList);
  end;
end;

procedure TIWForm32.IWButton1Click(Sender: TObject);
begin
  CheckSessions;
end;

initialization

TIWForm32.SetAsMainForm;

end.
