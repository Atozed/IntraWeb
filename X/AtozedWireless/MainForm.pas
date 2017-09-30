unit MainForm;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes, jpeg,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWExtCtrlsWAP, IWWAPControls, IWCompEditWAP, IWCompLabelWAP,
  IWCompButtonWAP;

type
  TformMain = class(TIWAppFormWAP)
    IWLabelWAP1: TIWLabelWAP;
    editPhone: TIWEditWAP;
    IWLabelWAP2: TIWLabelWAP;
    editPin: TIWEditWAP;
    IWImageWAP1: TIWImageWAP;
    LinkLogin: TIWLinkWAP;
    ButtonLogin: TIWButtonWAP;
    procedure ButtonLoginClick(Sender: TObject);
    procedure IWAppFormWAPCreate(Sender: TObject);
  public
  end;

implementation

uses FormUserDetailsUnit, ServerController;

{$R *.dfm}

procedure TformMain.ButtonLoginClick(Sender: TObject);
begin
  if UserSession.Login(editPhone.Text, editPin.Text) then begin
    TFormUserDetails.Create(WebApplication).Show;
  end
  else begin
    editPin.Text := '';
    WebApplication.ShowMessage('Invalid Login');
  end;
end;

procedure TformMain.IWAppFormWAPCreate(Sender: TObject);
begin
  LinkLogin.Visible := WebApplication.WAPClient.OutputTagType = wotWML;
  ButtonLogin.Visible := not (WebApplication.WAPClient.OutputTagType = wotWML);
end;

initialization
  TformMain.SetAsMainForm;

end.

