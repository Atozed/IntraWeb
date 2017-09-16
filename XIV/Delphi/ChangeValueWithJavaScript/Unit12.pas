unit Unit12;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompMemo;

type
  TIWForm12 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    IWButton2: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm12.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowMessage('IWEdit1.Text is "' + IWEdit1.Text + '"');
end;

initialization
  TIWForm12.SetAsMainForm;

end.
