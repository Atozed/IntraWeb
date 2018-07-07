unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWCompButton;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWMemo1: TIWMemo;
    IWLabel2: TIWLabel;
    IWButton1: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowMessage('Hello from HSysDemo1 application');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
