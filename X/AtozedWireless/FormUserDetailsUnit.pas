unit FormUserDetailsUnit;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWCompLabelWAP, jpeg, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWExtCtrlsWAP, IWWAPControls;

type
  TFormUserDetails = class(TIWAppFormWAP)
    IWImageWAP1: TIWImageWAP;
    IWLabelWAP1: TIWLabelWAP;
    IWLabelWAP2: TIWLabelWAP;
    labelName: TIWLabelWAP;
    labelPhoneNo: TIWLabelWAP;
    IWHyperLinkWAP1: TIWHyperLinkWAP;
    IWHyperLinkWAP2: TIWHyperLinkWAP;
    IWHyperLinkWAP3: TIWHyperLinkWAP;
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure IWHyperLinkWAP3Click(Sender: TObject);
    procedure IWHyperLinkWAP2Click(Sender: TObject);
    procedure IWHyperLinkWAP1Click(Sender: TObject);
  public
  end;

implementation

uses ServerController, UserSessionUnit, IWBaseForm, FormBalanceUnit,
  FormCallHistoryUnit;

{$R *.dfm}

procedure TFormUserDetails.IWAppFormWAPCreate(Sender: TObject);
begin
  labelName.Caption := UserSession.UserName;
  labelPhoneNo.Caption := UserSession.PhoneNo;
end;

procedure TFormUserDetails.IWHyperLinkWAP3Click(Sender: TObject);
begin
  //Maybe we should terminate here ..
  release;
end;

procedure TFormUserDetails.IWHyperLinkWAP2Click(Sender: TObject);
begin
  TFormBalance.Create(WebApplication).Show;
end;

procedure TFormUserDetails.IWHyperLinkWAP1Click(Sender: TObject);
begin
  TFormCallHistory.Create(WebApplication).Show;
end;

end.

