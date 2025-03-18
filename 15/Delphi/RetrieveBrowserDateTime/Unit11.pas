unit Unit11;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompText;

type
  TIWForm11 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWText1: TIWText;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm11.IWButton1AsyncClick(Sender: TObject; EventParams:
    TStringList);
var
  LBrowserDateTime: string;
begin
  LBrowserDateTime := WebApplication.Request.GetContentFieldValue('IW_BrowserDateTime');
  WebApplication.ShowMessage(LBrowserDateTime);
end;


initialization
  TIWForm11.SetAsMainForm;

end.
