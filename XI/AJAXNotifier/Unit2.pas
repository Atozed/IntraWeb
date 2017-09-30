unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component,
  IWExtCtrls, IWCompEdit;

type
  TIWForm2 = class(TIWAppForm)
    IWAJAXNotifier1: TIWAJAXNotifier;
    IWAJAXNotifier2: TIWAJAXNotifier;
    ButtonTime: TIWButton;
    LabelTime: TIWLabel;
    LabelTypedText: TIWLabel;
    LabelNotification: TIWLabel;
    EditText: TIWEdit;
    IWAJAXNotifier3: TIWAJAXNotifier;
    IWAJAXNotifier4: TIWAJAXNotifier;
    IWAJAXNotifier5: TIWAJAXNotifier;
    LabelTask1: TIWLabel;
    LabelTask2: TIWLabel;
    LabelTask3: TIWLabel;
    ButtonExecTasks: TIWButton;
    LabelTask4: TIWLabel;
    IWButton1: TIWButton;
    procedure ButtonTimeAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAJAXNotifier1Notify(Sender: TObject);
    procedure EditTextAsyncKeyPress(Sender: TObject; EventParams: TStringList);
    procedure IWAJAXNotifier2Notify(Sender: TObject);
    procedure IWAJAXNotifier3Notify(Sender: TObject);
    procedure IWAJAXNotifier4Notify(Sender: TObject);
    procedure IWAJAXNotifier5Notify(Sender: TObject);
    procedure DoTask;
    procedure ButtonExecTasksAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm2.ButtonTimeAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  LabelTime.Caption := TimeToStr(Time);
  LabelTime.Visible := True;

  // this will send a notification to the IW AJAX core and a new AJAX call
  // will be triggered when this AJAX call finishes
  IWAJAXNotifier1.Notify;
end;

procedure TIWForm2.DoTask;
var
  i: Integer;
begin
//  for i := 0 to 10000 do begin
//    ;
//  end;
  Sleep(1000);
end;

procedure TIWForm2.EditTextAsyncKeyPress(Sender: TObject;
  EventParams: TStringList);
begin
  IWAJAXNotifier2.Notify;
end;

procedure TIWForm2.IWAJAXNotifier1Notify(Sender: TObject);
begin
  LabelNotification.Caption := 'Someone asked the current time and ' +
    'the answer was ' + LabelTime.Caption;
  LabelNotification.Visible := True;
end;

procedure TIWForm2.IWAJAXNotifier2Notify(Sender: TObject);
begin
  LabelTypedText.Visible := True;
  LabelTypedText.Caption := 'The typed text is ' + EditText.Text;
end;

procedure TIWForm2.ButtonExecTasksAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  DoTask;
  LabelTask1.Visible := True;
  IWAJAXNotifier3.Notify;
end;

procedure TIWForm2.IWAJAXNotifier3Notify(Sender: TObject);
begin
  DoTask;
  LabelTask2.Visible := True;
  IWAJAXNotifier4.Notify;
end;

procedure TIWForm2.IWAJAXNotifier4Notify(Sender: TObject);
begin
  DoTask;
  LabelTask3.Visible := True;
  IWAJAXNotifier5.Notify;
end;

procedure TIWForm2.IWAJAXNotifier5Notify(Sender: TObject);
begin
  DoTask;
  LabelTask4.Visible := True;
end;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  // don't call it outside Async events
  IWAJAXNotifier5.Notify;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
