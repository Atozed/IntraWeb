program IW_IPC_Server;

uses
  Vcl.Forms,
  uMainFormServer in 'uMainFormServer.pas' {Form26};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.Run;
end.
