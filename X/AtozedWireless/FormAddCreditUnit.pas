unit FormAddCreditUnit;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWWAPControls, jpeg, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWExtCtrlsWAP, IWCompLabelWAP,
  IWCompEditWAP, IWCompButtonWAP;

type
  TFormAddCredit = class(TIWAppFormWAP)
    IWImageWAP1: TIWImageWAP;
    IWHyperLinkWAP1: TIWHyperLinkWAP;
    EditCC: TIWEditWAP;
    IWLabelWAP1: TIWLabelWAP;
    IWLabelWAP2: TIWLabelWAP;
    EditValid: TIWEditWAP;
    IWLabelWAP3: TIWLabelWAP;
    EditAmount: TIWEditWAP;
    IWLabelWAP4: TIWLabelWAP;
    LinkPurchase: TIWLinkWAP;
    buttonPurchase: TIWButtonWAP;
    procedure IWHyperLinkWAP1Click(Sender: TObject);
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure IWHyperLinkWAP2Click(Sender: TObject);
  public
  end;

implementation

uses ServerController, IWBaseForm;

{$R *.dfm}

procedure TFormAddCredit.IWHyperLinkWAP1Click(Sender: TObject);
begin
  release;
end;

procedure TFormAddCredit.IWAppFormWAPCreate(Sender: TObject);
begin
  EditAmount.Text := FormatFloat('0.00', 10.0);
  LinkPurchase.Visible := WebApplication.WAPClient.OutputTagType = wotWML;
  buttonPurchase.Visible := not (WebApplication.WAPClient.OutputTagType = wotWML);
end;

procedure TFormAddCredit.IWHyperLinkWAP2Click(Sender: TObject);
begin
  UserSession.Purchase(EditCC.Text, EditValid.Text, EditAmount.Text);
  release;
end;

end.

