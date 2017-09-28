library GuessLib;

uses
  IW.Export,
  Main in 'Main.pas' {formMain: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  { parameters to debug using Cassini:
  Host application: C:\Program Files\Common Files\microsoft shared\DevServer\10.0\WebDev.WebServer40.EXE
  Parameters: /port:8888 /path:"G:\Intraweb\14.0\source\private\server\ASPX" /vpath:"/IntraWeb"

  parameters to debug using IIS:
  Host application: C:\Windows\System32\inetsrv\w3wp.exe
  Parameters: -debug
  }
end.


