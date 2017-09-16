unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm3 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm3.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  jsCode: string;
begin
  Sleep(5000);  // simulate something that requires a long time
  jsCode := 'ReleaseLock();';    // the code to deactivate the IWLocker
  WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA(jsCode);  // add the code to the response
end;

initialization
  TIWForm3.SetAsMainForm;

end.
