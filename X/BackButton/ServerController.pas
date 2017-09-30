unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, HTTPApp, IWContainer;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseBackButton(ASubmittedSequence,
      ACurrentSequence: Integer; AFormName: String; var VHandled,
      VExecute: Boolean);
  private
  public
  end;

implementation

{$R *.dfm}

uses
  IWInit, Second, Third, Main, IWForm;

procedure TIWServerController.IWServerControllerBaseBackButton(
  ASubmittedSequence, ACurrentSequence: Integer; AFormName: String;
  var VHandled, VExecute: Boolean);
const
  DefaultFormName = 'MainForm';
type
  TIWFormClass = class of TIWForm;  
var
  LForm : TIWForm;
begin
  // This is a generic back-button handler that can easily be adapted to
  // your application
  VHandled := True;
  VExecute := True;
  if AFormName = '' then
    AFormName := DefaultFormName;
  if WebApplication.FindComponent(AFormName) <> nil then
  begin
    WebApplication.SetActiveForm(WebApplication.FindComponent(AFormName) as
      TIWContainer);
  end else begin
    try
      LForm := TIWFormClass(FindClass('T' + AFormName)).Create(WebApplication);
      WebApplication.SetActiveForm(LForm);
    except
      VHandled := false;
    end;
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;
end.


