unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
    { Private declarations }
    FPendingPayment: Boolean;
    FMessageId: string;
    FStatus: string;
    FValue: Double;
    FErrorMessage: string;
    function GetPaymentSuccessful: Boolean;
  public
    { Public declarations }
    procedure PaymentInitiated(const aMessageId: string; aValue: Double);
    procedure PaymentReceived(const aMessageId, aStatus, aErrorMessage: string; aValue: Double);
    property PaymentSuccessful: Boolean read GetPaymentSuccessful;
    property PaymentValue: Double read FValue;
    property PaymentErrorMessage: string read FErrorMessage;
  end;

implementation

{$R *.dfm}

const
  STATUS_OK = 'success';
  STATUS_FAILED = 'error';

{ TIWUserSession }

function TIWUserSession.GetPaymentSuccessful: Boolean;
begin
  Result := FStatus = STATUS_OK;
end;

procedure TIWUserSession.PaymentInitiated(const aMessageId: string;
  aValue: Double);
begin
  FErrorMessage := '';
  FPendingPayment := True;
  FMessageId := aMessageId;
  FValue := aValue;
end;

procedure TIWUserSession.PaymentReceived(const aMessageId, aStatus, aErrorMessage: string; aValue: Double);
begin
  // check if payment matches what we expect
  if (FMessageId = aMessageId) and (FValue = aValue) then
  begin
    FStatus := aStatus;
    FErrorMessage := aErrorMessage;
    // Setting WebApplication.Status value to something other than zero will trigger the IWMonitor of the
    // Active form, if it has one.
    // This is just a flag. 100 doesn't have any special meaning and basically any value could be used
    WebApplication.Status.Value := 100;
    FPendingPayment := False;
  end;
end;

end.
