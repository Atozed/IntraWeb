unit Unit40;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompLabel, IWCompText;

type
  TIWForm40 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWLabel1: TIWLabel;
    IWText1: TIWText;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
    procedure MyAjaxMethod(EventParams: TStringList);
  end;

implementation

{$R *.dfm}


procedure TIWForm40.IWButton1Click(Sender: TObject);
begin
  Sleep(5000);
end;

procedure TIWForm40.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  Sleep(5000);
end;

procedure TIWForm40.MyAjaxMethod(EventParams: TStringList);
begin
  Sleep(5000);
end;

procedure TIWForm40.IWAppFormCreate(Sender: TObject);
begin
  RegisterCallBack('MyAjaxMethod', MyAjaxMethod);
end;

initialization
  TIWForm40.SetAsMainForm;

end.
