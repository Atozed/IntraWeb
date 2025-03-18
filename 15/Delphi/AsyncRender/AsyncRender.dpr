program AsyncRender;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWStart,
  Unit16 in 'Unit16.pas' {IWForm16: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  IW.LibDeflate.Import in '..\..\..\..\15.1\source\public\zlib\IW.LibDeflate.Import.pas',
  IW.LibDeflate.Compressor in '..\..\..\..\15.1\source\public\zlib\IW.LibDeflate.Compressor.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
