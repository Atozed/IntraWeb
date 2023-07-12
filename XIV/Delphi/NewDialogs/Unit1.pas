unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompLabel, IWCompEdit, IWCompRadioButton, IWCompExtCtrls, IWCompCheckbox;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    edtMessage: TIWEdit;
    IWLabel1: TIWLabel;
    IWRadioGroup1: TIWRadioGroup;
    chkTitle: TIWCheckBox;
    edtTitle: TIWEdit;
    cbCustomCallback: TIWCheckBox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure ShowConfirmationWithCustomCallback(const Msg: string);
    procedure ShowConfirmationWithCallback(const Msg: string);
    procedure ShowDialogs(const Msg, Title: string; Option: Integer);
    procedure MyConfirmCallback(EventParams: TStringList);
    procedure MyConfirmCallback2(EventParams: TStringList);
    procedure MyPromptCallback(EventParams: TStringList);
  end;

implementation

{$R *.dfm}

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  WebApplication.RegisterCallBack('MyConfirmCallback', MyConfirmCallback);
  WebApplication.RegisterCallBack('MyConfirmCallback2', MyConfirmCallback2);
  WebApplication.RegisterCallBack('MyPromptCallback', MyPromptCallback);
end;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  aTitle: string;
begin
  aTitle := edtTitle.Text;
  if not chkTitle.Checked then
    aTitle := '';  // empty title is not shown in dialog!
  ShowDialogs(edtMessage.Text, aTitle, IWRadioGroup1.ItemIndex + 1);
end;

procedure TIWForm1.MyConfirmCallback(EventParams: TStringList);
var
  Response: Boolean;
  SelectedButton: string;
  MsgType: TIWNotifyType;
begin
  // Confirm callback has 1 main parameters:
  // RetValue (Boolean), indicates if the first button (Yes/OK/custom) was choosen
  Response := SameText(EventParams.Values['RetValue'], 'True');
  if Response then begin
    SelectedButton := 'Yes';
    MsgType := ntSuccess;
  end
  else begin
    SelectedButton := 'No';
    MsgType := ntError;
  end;
  WebApplication.ShowNotification('This is the callback. ' +
                                  'The selected button was: ' + SelectedButton,
                                  MsgType);
end;

procedure TIWForm1.MyConfirmCallback2(EventParams: TStringList);
var
  userPressedYes: Boolean;
begin
  userPressedYes := SameText(EventParams.Values['RetValue'], 'True');
  // This callback is called when Confirmation executes and all it does is to
  // simulate some lenghty operation
  if userPressedYes then
  begin
    Sleep(5000);
  end;
end;

procedure TIWForm1.ShowConfirmationWithCustomCallback(const Msg: string);
var
  jsCallbackCode: string;
begin
  jsCallbackCode := 'var msg;' +
                    'if (e == true) {msg = ''Please wait while we are generating your report''};'+
                    'ajaxCall(''MyConfirmCallback2'', ''&RetValue='' + e, {text:msg});';
  jsCallbackCode := 'javascript:' + jsCallbackCode;
  WebApplication.ShowConfirm(Msg, jsCallbackCode, Title, 'Yes', 'No');
end;

procedure TIWForm1.ShowConfirmationWithCallback(const Msg: string);
begin
  WebApplication.ShowConfirm(Msg, 'MyConfirmCallback', Title, 'Yes', 'No');
end;

procedure TIWForm1.MyPromptCallback(EventParams: TStringList);
var
  Response: Boolean;
  InputValue: string;
  SelectedButton: string;
  MsgType: TIWNotifyType;
  Msg: string;
begin
  // Prompt callback has 2 main parameters:
  // RetValue (Boolean), indicates if the first button (Yes/OK/custom) was choosen
  // InputStr, contains the string entered in the input box
  Response := SameText(EventParams.Values['RetValue'], 'True');
  InputValue := EventParams.Values['InputStr'];
  if Response then begin
    SelectedButton := 'OK';
    MsgType := ntSuccess;
  end
  else begin
    SelectedButton := 'Cancel';
    MsgType := ntError;
  end;
  Msg := 'This is the callback. The selected button was: ' + SelectedButton;
  if Response then
    Msg := Msg + ', and the string entered was: ' + InputValue;

  WebApplication.ShowNotification(Msg, MsgType);
end;

procedure TIWForm1.ShowDialogs(const Msg, Title: string; Option: Integer);
begin
  case Option of
    1: WebApplication.ShowMessage(Msg);
    2: begin
         if not cbCustomCallback.Checked then
           ShowConfirmationWithCallback(Msg)
         else
           ShowConfirmationWithCustomCallback(Msg);
       end;
    3: WebApplication.ShowPrompt(Msg,  'MyPromptCallback', Title, 'This is the default value');
    4: WebApplication.ShowNotification(Msg);
  end;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
