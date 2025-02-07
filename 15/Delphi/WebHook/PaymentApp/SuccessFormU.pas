unit SuccessFormU;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML;

type
  TSuccessForm = class(TIWAppForm)
    IWLinkBack: TIWLink;
    IWLblMessage: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure IWAppFormShow(Sender: TObject);
    procedure IWLinkBackAsyncClick(Sender: TObject; EventParams: TStringList);
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TSuccessForm.IWAppFormShow(Sender: TObject);
var
  LValue: Double;
begin
  LValue := UserSession.PaymentValue;

  IWLblMessage.Text := 'Your payment of $' + FormatFloat('0.00', LValue) + ' was successful!';
end;

procedure TSuccessForm.IWLinkBackAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WebApplication.ShowForm('TMainForm', True, True);
end;

initialization
  RegisterClass(TSuccessForm);  // so we can create it via WebApplication.ShowForm() using the class name

end.
