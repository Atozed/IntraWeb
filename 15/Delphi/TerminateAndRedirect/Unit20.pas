unit Unit20;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompRadioButton, IWCompEdit, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, IWHTMLTag;

type
  TIWForm20 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWEdit1: TIWEdit;
    rbSite: TIWRadioButton;
    rbStatic: TIWRadioButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  StrUtils, IW.Common.URL;

procedure TIWForm20.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // please also check ServerController.OnConfig event!
  if rbStatic.Checked then begin
    WebApplication.TerminateAndRedirect(WebApplication.ApplicationURL + '/terminate.html');
  end else begin
    if not TURL.IsAbsolute(IWEdit1.Text) then begin
      raise Exception.Create('You must provide an absolute URL');
    end;
    WebApplication.TerminateAndRedirect(IWEdit1.Text);
  end;
end;

initialization
  TIWForm20.SetAsMainForm;

end.
