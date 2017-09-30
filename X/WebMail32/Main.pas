// WebMail32 demo
unit Main;

interface

uses
  Classes, SysUtils, IWAppForm32, IWApplication, IWTypes, IWCompLabel32,
  IWCompEdit32, IWCompRadioButton32, Controls, IWVCLBaseControl,
  IWBaseControl, IWControl32, IWCompText32, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainer32Layout, IWLayoutMgrHTML32,
  IWCompButton32, IWTemplateProcessorHTML32, IWVCLComponent,
  IWBaseHTMLControl;

type
  TfrmMain = class(TIWAppForm32)
    txtExplanation: TIWText32;
    rbChoseSample: TIWRadioButton32;
    rbChoseReal: TIWRadioButton32;
    edMailServer: TIWEdit32;
    lblMailServer: TIWLabel32;
    lblUserName: TIWLabel32;
    edUserName: TIWEdit32;
    lblPassword: TIWLabel32;
    edPassword: TIWEdit32;
    IWTemplateProcessorHTML321: TIWTemplateProcessorHTML32;
    btnStart: TIWButton32;
    procedure btnStartClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}
uses
  Mail,
  ServerController;


procedure TfrmMain.btnStartClick(Sender: TObject);
begin
  if rbChoseSample.Checked then
  begin
    UserSession.UseSampleMessages := TRUE;
  end
  else
  begin
    UserSession.UseSampleMessages := FALSE;
    UserSession.MailServer := edMailServer.Text;
    UserSession.UserName := edUserName.Text;
    UserSession.Password := edPassword.Text;
  end;

  TfrmMailList.Create(WebApplication).Show;
  Release; 
end;

initialization
  TfrmMain.SetAsMainForm;

end.
