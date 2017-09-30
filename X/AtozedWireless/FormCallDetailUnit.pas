unit FormCallDetailUnit;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWCompLabelWAP, jpeg, IWExtCtrlsWAP, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseWAPControl, IWControlWAP, IWWAPControls;

type
  TFormCallDetail = class(TIWAppFormWAP)
    IWHyperLinkWAP1: TIWHyperLinkWAP;
    IWImageWAP1: TIWImageWAP;
    labelDate: TIWLabelWAP;
    labelCalledNumber: TIWLabelWAP;
    labelDuration: TIWLabelWAP;
    labelChargedUnits: TIWLabelWAP;
    procedure IWHyperLinkWAP1Click(Sender: TObject);
  public
    class procedure ShowDetail(ACallID: Integer);
  end;

implementation
uses IWInit, ServerController, UserSessionUnit;
{$R *.dfm}

{ TFormCallDetail }

class procedure TFormCallDetail.ShowDetail(ACallID: Integer);
var
  LForm: TFormCallDetail;
  LCall: TCallDetail;
begin
  LForm := TFormCallDetail.Create(GGetWebApplicationThreadVar);
  LCall := UserSession.GetCall(ACallID);
  LForm.labelDate.Caption := DateTimeToStr(LCall.CalledDateTime);
  LForm.labelCalledNumber.Caption := LCall.CalledNo;
  LForm.labelDuration.Caption := IntToStr(LCall.Duration) + ' secs';
  LForm.labelChargedUnits.Caption := FormatFloat('0.00', LCall.CharedUnits / 100) + ' EUR';
  LForm.Show;
end;

procedure TFormCallDetail.IWHyperLinkWAP1Click(Sender: TObject);
begin
  release;
end;

end.

