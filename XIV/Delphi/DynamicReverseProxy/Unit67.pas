unit Unit67;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo, IWCompButton;

type
  TIWForm67 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm67.IWButton1Click(Sender: TObject);
begin
  WebApplication.ShowMessage('Sync calls work');
end;

procedure TIWForm67.IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  WebApplication.ShowMessage('Async calls work');
end;

initialization
  TIWForm67.SetAsMainForm;

end.
