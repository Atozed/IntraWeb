unit MainWAP;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWCompButtonWAP, IWCompEditWAP, IWCompCheckBoxWAP, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseWAPControl, IWControlWAP,
  IWCompLabelWAP, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWWapContainerLayout, IWTemplateProcessorWAP,
  IWWAPControls;

type
  TformMainWAP = class(TIWAppFormWAP)
    lablInfo: TIWLabelWAP;
    lablMailServer: TIWLabelWAP;
    lablUsername: TIWLabelWAP;
    lablPassword: TIWLabelWAP;
    editHost: TIWEditWAP;
    editUsername: TIWEditWAP;
    editPassword: TIWEditWAP;
    butnFetch: TIWButtonWAP;
    IWTemplateProcessorWAP1: TIWTemplateProcessorWAP;
    linkLogout: TIWHyperLinkWAP;
    procedure butnFetchClick(Sender: TObject);
    procedure linkLogoutClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}
uses
  ServerController, MailWAP, DateUtils;


procedure TformMainWAP.butnFetchClick(Sender: TObject);
begin
  with UserSession do begin
    MailServer := editHost.Text;
    UserName := editUsername.Text;
    Password := editPassword.Text;
  end;
  TformMailWAP.Create(WebApplication).Show;
  Release;
end;

procedure TformMainWAP.linkLogoutClick(Sender: TObject);
begin
  WebApplication.Terminate('Thanks for using WebMail Mobile');
end;

initialization
  TformMainWAP.SetAsMainForm;

end.
