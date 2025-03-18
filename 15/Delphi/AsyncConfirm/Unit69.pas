unit Unit69;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm69 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
    procedure MyConfirmCallback(EventParams: TStringList);
  end;

implementation

{$R *.dfm}

procedure TIWForm69.IWAppFormCreate(Sender: TObject);
begin
  WebApplication.RegisterCallBack('MyConfirmCallback', MyConfirmCallback);
end;

procedure TIWForm69.MyConfirmCallback(EventParams: TStringList);
var
  Response: Boolean;
begin
  // Confirm callback has 1 main parameters:
  // RetValue (Boolean), indicates if the first button (Yes/OK/custom) was choosen
  Response := SameText(EventParams.Values['RetValue'], 'True');
  if Response then
    IWMemo1.Lines.Add('User responded "YES"')
  else
    IWMemo1.Lines.Add('User responded "NO"')
end;

procedure TIWForm69.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowConfirm('Do you want to execute that action now?', 'MyConfirmCallback', Title, 'Yes', 'No');
end;

initialization
  TIWForm69.SetAsMainForm;

end.
