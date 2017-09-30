unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, DB, ADODB;

type
  TCallDetail = record
    CalledDateTime: TDateTime;
    Duration: integer;
    CharedUnits: Integer;
    CalledNo: string;
  end;

  TIWUserSession = class(TIWUserSessionBase)
    ADOConnection1: TADOConnection;
    qLogin: TADOQuery;
    qLoginID: TAutoIncField;
    qLoginNAME_FIRST: TWideStringField;
    qLoginNAME_LAST: TWideStringField;
    qLoginCELL_NO: TWideStringField;
    qLoginPIN: TWideStringField;
    qLoginBalance: TBCDField;
    qAddCredit: TADOQuery;
    qCalls: TADOQuery;
    qCallsID: TAutoIncField;
    qCallsCALLER_CELL_NO: TWideStringField;
    qCallsCALLED_NO: TWideStringField;
    qCallsCALL_START: TDateTimeField;
    qCallsCALL_END: TDateTimeField;
    qCallsCHARGE: TBCDField;
  private
    FUserName: string;
    FPhoneNo: string;
    FBalance: double;
    FCalls: array[0..4] of TCallDetail;
    procedure SetPhoneNo(const Value: string);
    procedure SetUserName(const Value: string);
    procedure SetBalance(const Value: double);
    function GetBalance: double;
    { Private declarations }
  public
    property UserName: string read FUserName write SetUserName;
    property PhoneNo: string read FPhoneNo write SetPhoneNo;
    property Balance: double read GetBalance write SetBalance;
    function Login(APhoneNo, APIN: string): boolean;
    procedure Purchase(ACC, AValid, AAmount: string);
    function GetCall(AID: integer): TCallDetail;
  end;

implementation
uses DateUtils;
{$R *.dfm}

{ TIWUserSession }

function TIWUserSession.GetCall(AID: integer): TCallDetail;
begin
  result := FCalls[AID];
end;

function TIWUserSession.Login(APhoneNo, APIN: string): boolean;
var
  i: integer;
begin
  //Todo:  Check DB
  qLogin.Close;
  qLogin.Parameters.ParamByName('PIN').Value := APin;
  qLogin.Parameters.ParamByName('CELLNO').Value := APhoneNo;
  qLogin.open;
  result := qLogin.RecordCount = 1;

  //result := (APhoneNo = '1717924447') and (APin = '1234');
  if result then begin
    PhoneNo := APhoneNo;
    UserName := trim(qLoginNAME_FIRST.Value + ' ' + qLoginNAME_LAST.Value); //'Olaf Monien';

    //ToDo: Implement paging
    qCalls.Close;
    QCalls.Parameters.ParamByName('CellNo').Value := PhoneNo;
    qCalls.Open;
    qCalls.First;
    for i := 0 to 4 do begin
      if not qCalls.Eof then begin
        FCalls[i].CalledDateTime := qCallsCALL_START.Value;
        FCalls[i].Duration := trunc((qCallsCALL_END.value - qCallsCALL_START.value) / OneSecond);
        FCalls[i].CharedUnits := trunc(qCallsCHARGE.value * 100);
        FCalls[i].CalledNo := qCallsCALLED_NO.Value;
        qCalls.next;
      end
      else begin
        FCalls[i].CalledDateTime := 0;
        FCalls[i].Duration := 0;
        FCalls[i].CharedUnits := 0;
        FCalls[i].CalledNo := '';
      end;
    end;

  end
  else begin
    UserName := '';
    PhoneNo := '';
  end;
end;

procedure TIWUserSession.Purchase(ACC, AValid, AAmount: string);
begin
  //Todo: Just a Credit Card fake here
  Sleep(2000);
  if (ACC = '4920111122223333') and (AValid = '05/06') then begin
    QAddCredit.Parameters.ParamByName('cellno').Value := PhoneNo;
    QAddCredit.Parameters.ParamByName('credit').Value := Abs(StrToFloat(AAmount));
    if qAddCredit.ExecSQL <> 1 then raise exception.Create('Adding Credit failed. Please call our support center: +1-800-GoAtozed');
  end
  else
    raise Exception.Create('Your Credit Card has been refused!');
end;

procedure TIWUserSession.SetBalance(const Value: double);
begin
  FBalance := Value;
end;

procedure TIWUserSession.SetPhoneNo(const Value: string);
begin
  FPhoneNo := Value;
end;

procedure TIWUserSession.SetUserName(const Value: string);
begin
  FUserName := Value;
end;

function TIWUserSession.GetBalance: double;
begin
  qLogin.Refresh;
  Result := qLoginBalance.Value;
end;

end.

