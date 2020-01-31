unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWCompButton;

type
  TIWForm3 = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    IWLabel8: TIWLabel;
    IWLabel9: TIWLabel;
    IWLabel10: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm3.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  js: string;
begin
  js := 'var el = IW.$("IWREGION1");' +
        'el.scrollTop = el.scrollTop + 10;';
  WebApplication.CallbackResponse.AddJavaScriptToExecute(js);
end;

procedure TIWForm3.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  js: string;
begin
  js := 'var el = IW.$("IWREGION1");' +
        'el.scrollTop = el.scrollTop - 10;';
  WebApplication.CallbackResponse.AddJavaScriptToExecute(js);
end;

initialization
  TIWForm3.SetAsMainForm;

end.
