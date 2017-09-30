unit FormBalanceUnit;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes, jpeg,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWExtCtrlsWAP, IWWAPControls, IWCompLabelWAP;

type
  TFormBalance = class(TIWAppFormWAP)
    IWImageWAP1: TIWImageWAP;
    IWHyperLinkWAP1: TIWHyperLinkWAP;
    IWLabelWAP1: TIWLabelWAP;
    labelBalance: TIWLabelWAP;
    IWLinkWAP1: TIWLinkWAP;
    procedure IWHyperLinkWAP1Click(Sender: TObject);
    procedure IWAppFormWAPRender(Sender: TObject);
    procedure IWHyperLinkWAP2Click(Sender: TObject);
  public
  end;

implementation

uses ServerController, FormAddCreditUnit;

{$R *.dfm}

procedure TFormBalance.IWHyperLinkWAP1Click(Sender: TObject);
begin
  release;
end;

procedure TFormBalance.IWAppFormWAPRender(Sender: TObject);
begin
  labelBalance.Caption := FormatFloat('0.00', UserSession.Balance) + ' EUR';
end;

procedure TFormBalance.IWHyperLinkWAP2Click(Sender: TObject);
begin
  TFormAddCredit.Create(WebApplication).Show;
end;

end.

