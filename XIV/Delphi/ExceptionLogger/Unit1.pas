unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, IW.Common.AppInfo;

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  Msg: string;
begin
  Msg := 'This is an exception. Check the log file for details and stack trace!';
  if IWServerController.ExceptionLogger.FilePath = '' then begin
    Msg := Msg + #13#10 +
           'Log file path: ' + TIWAppInfo.GetAppPath + 'ErrorLog\';
  end else begin
    Msg := Msg + #13#10 +
           'Log file path: ' + IWServerController.ExceptionLogger.FilePath;
  end;
  raise Exception.Create(Msg);
end;

procedure TIWForm1.IWButton2Click(Sender: TObject);
var
  x: TStringList;
begin
  x.Clear;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
