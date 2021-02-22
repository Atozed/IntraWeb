unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply, IWServer;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseBackButton(var VResyncInfo: TIWResyncInfo);
    procedure IWServerControllerBaseConfig(Sender: TObject);

  private
    { Private declarations }
    
  public
    { Public declarations }
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;



function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

{ TIWServerController }

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseBackButton(
  var VResyncInfo: TIWResyncInfo);
begin
  VResyncInfo.SetActiveForm := False;
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
begin
  Self.RegionalSettings.DecimalSeparator := ',';
  Self.RegionalSettings.ThousandSeparator := '.';
  Self.RegionalSettings.CurrencyString := ' €';
  Self.RegionalSettings.CurrencyFormat := 1;
  Self.RegionalSettings.ShowThousandSeparator := True;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

