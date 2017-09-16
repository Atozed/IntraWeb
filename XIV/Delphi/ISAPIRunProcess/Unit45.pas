unit Unit45;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo,
  IWCompButton, IWCompLabel, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit;

type
  TIWForm45 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  Windows, ShellAPI, IW.Common.AppInfo;

procedure ExecProcess(const ACommandLine, AParams: string);
var
  StartInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  Res: Boolean;
  Params: string;
begin
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartupInfo);
  Params := ACommandLine + ' ' + AParams;
  Res := CreateProcess(nil, PChar(Params), nil, nil,False,
              CREATE_NEW_PROCESS_GROUP+NORMAL_PRIORITY_CLASS,
              nil, nil, StartInfo, ProcInfo);
  if Res then begin
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end else begin
    raise Exception.Create(Format('Could not execute process: ', [SysErrorMessage(GetLastError)]));
  end;
end;


procedure TIWForm45.IWButton1Click(Sender: TObject);
var
  aAppFileName,
  aFileName,
  aText: string;
begin
  if Trim(IWEdit1.Text) = '' then begin
    raise Exception.Create('Please provide a file name.');
  end;
  aFileName := TIWAppInfo.GetAppPath + Trim(IWEdit1.Text);
  aAppFileName := TIWAppInfo.GetAppPath + 'ConsoleApp.exe';
  aText := '"Sent from our ISAPI DLL"';    // use double quotes here!
  ExecProcess(aAppFileName, aFileName + ' ' + aText);
end;

initialization
  TIWForm45.SetAsMainForm;

end.
