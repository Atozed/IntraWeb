unit Unit25;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel;

type
  TIWForm25 = class(TIWAppForm)
    IWTimerLabel: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  private
    procedure UpdatePage;
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

// inject some javascript into the page. This is responsible for decrementing the SecsRemaining variable
// and updating the IWLabel
procedure TIWForm25.IWAppFormCreate(Sender: TObject);
begin
  Self.JavaScript.Add('var SecsRemaining;' + #13#10 +
                      '' + #13#10 +
                      'function updateTimer() {' + #13#10 +
                      '  SecsRemaining = SecsRemaining - 1;' + #13#10 +
                      '  el = document.getElementById("IWTIMERLABEL");' + #13#10 +
                      '  if (el) {' + #13#10 +
                      '   el.textContent = "Your session will expire in " + SecsRemaining + " seconds";' + #13#10 +
                      '  }' + #13#10 +
                      '}');
end;

// create a pure javascript timer using setInterval().
// please check the form's JavaScript property
procedure TIWForm25.IWAppFormRender(Sender: TObject);
begin
  UpdatePage;
  PageContext.AddToInitProc('window.setInterval("updateTimer()", 1000);');
end;

// sync handler
procedure TIWForm25.IWButton1Click(Sender: TObject);
begin
//  we don't need to do anything here. A full post will call OnRender event
end;

// async handler
procedure TIWForm25.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  UpdatePage;
end;

// recalc seconds remaining and update the label for both Async and Sync requests
procedure TIWForm25.UpdatePage;
var
  SecsRemaining: Integer;
begin
  SecsRemaining := IWServerController.SessionTimeout * 60;
  IWTimerLabel.Caption := 'Your session will expire in ' + IntToStr(SecsRemaining) + ' seconds';
  if WebApplication.IsCallBack then begin
    WebApplication.CallBackResponse.AddJavaScriptToExecute('SecsRemaining = ' + IntToStr(SecsRemaining) + ';');
  end else begin
    Self.PageContext.AddToInitProc('SecsRemaining = ' + IntToStr(SecsRemaining) + ';');
  end;
end;

initialization
  TIWForm25.SetAsMainForm;

end.
