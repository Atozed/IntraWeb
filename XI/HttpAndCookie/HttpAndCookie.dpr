program HttpAndCookie;

uses
  Forms,
  IWStart,
  UTF8ContentParser,
  Main in 'Main.pas' {IWForm2: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
