unit FailureFormU;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML;

type
  TFailureForm = class(TIWAppForm)
    IWLinkBack: TIWLink;
    IWLblMessage: TIWLabel;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWLblErrorMessage: TIWLabel;
    procedure IWAppFormShow(Sender: TObject);
    procedure IWLinkBackAsyncClick(Sender: TObject; EventParams: TStringList);
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TFailureForm.IWAppFormShow(Sender: TObject);
var
  LValue: Double;
  LErrorMessage: string;
begin
  LValue := UserSession.PaymentValue;
  LErrorMessage := UserSession.PaymentErrorMessage;

  IWLblMessage.Text := 'Your payment of $' + FormatFloat('0.00', LValue) + ' failed!';
  IWLblErrorMessage.Text := LErrorMessage;
end;

procedure TFailureForm.IWLinkBackAsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WebApplication.ShowForm('TMainForm', True, True);
end;

initialization
  RegisterClass(TFailureForm);  // so we can create it via WebApplication.ShowForm() using the class name

end.
