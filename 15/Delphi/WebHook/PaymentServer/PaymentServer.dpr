program PaymentServer;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainForm},
  uCommonUtil in '..\PaymentApp\uCommonUtil.pas';

{$R *.res}

var
  MainForm: TMainForm;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

