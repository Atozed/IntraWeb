unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser, 
  IW.HTTP.Request, IW.HTTP.Reply;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseConfig(Sender: TObject);
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);

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
  IWInit, IWGlobal, IW.Parser.Files, IW.Content.Handlers, IW.Content.Payment;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseConfig(Sender: TObject);
var
  PaymentHandler: TContentPayment;
begin
  PaymentHandler := TContentPayment.Create;
  PaymentHandler.CanStartSession := False;
  PaymentHandler.RequiresSessionStart := False;
  PaymentHandler.RequiresSession := False;
  THandlers.Add('', 'PaymentReponse', PaymentHandler);

  // Tell IW that it should accept json requests
  RegisterContentType('application/json');

  // Set our money format
  RegionalSettings.DecimalSeparator := '.';
  RegionalSettings.ThousandSeparator := ',';
  RegionalSettings.CurrencyString := '$';
end;

{ TIWServerController }

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.


