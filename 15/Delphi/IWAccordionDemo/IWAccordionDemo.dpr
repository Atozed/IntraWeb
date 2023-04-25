program IWAccordionDemo;

uses
  IWRtlFix,
  IWStart,
  Unit34 in 'Unit34.pas' {IWForm34: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
