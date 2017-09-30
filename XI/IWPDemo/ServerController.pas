unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseUserTag(const aName: string;
      aParams: TStrings; aOutput: TStringStream);

  private

  public
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

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TIWUserSession.Create(nil);
end;

procedure TIWServerController.IWServerControllerBaseUserTag(const aName: string;
  aParams: TStrings; aOutput: TStringStream);
var
  xPrizeValue: Currency;
begin
  if SameText(LowerCase(aName), 'prizevalue') then begin
    Randomize;
    xPrizeValue := Random(10000);
    aOutPut.WriteString(FormatCurr(CurrencyString + ' 0.00', xPrizeValue));
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

