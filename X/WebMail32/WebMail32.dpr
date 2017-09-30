program WebMail32;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Main in 'Main.pas' {frmMain: TIWFormModuleBase},
  Mail in 'Mail.pas' {frmMailList: TIWAppForm32},
  MainWAP in 'MainWAP.pas' {formMainWAP: TIWAppFormWAP},
  MailWAP in 'MailWAP.pas' {formMailWAP: TIWAppFormWAP},
  MsgWAP in 'MsgWAP.pas' {formMsgWAP: TIWAppFormWAP};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
