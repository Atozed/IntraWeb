unit Unit56;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWCompMemo,
  IWCompLabel;

type
  TIWForm56 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWMemo1: TIWMemo;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm56.IWButton1Click(Sender: TObject);
begin
  raise Exception.Create('This is an sample exception');
end;

initialization
  TIWForm56.SetAsMainForm;

end.
