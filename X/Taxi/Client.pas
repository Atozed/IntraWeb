unit Client;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWCompEditWAP, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWCompListBoxWAP, IWDBStdCtrlsWAP,
  IWCompLabelWAP, DB, dbisamtb, IWWAPControls;

type
  TfrmClient = class(TIWAppFormWAP)
    IWLabelWAP1: TIWLabelWAP;
    edClientName: TIWEditWAP;
    IWLabelWAP3: TIWLabelWAP;
    edPassword: TIWEditWAP;
    lnkNewClient: TIWHyperLinkWAP;
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
    procedure lnkNewClientClick(Sender: TObject);
  public
  end;

implementation

uses TaxiDM, UserSessionUnit, EditClient, ClientOrders;

{$R *.dfm}


procedure TfrmClient.IWAppFormWAPDefaultAction(Sender: TObject);
begin
  if edClientName.Text<>'' then begin
    if TaxiDataModule.GetPassword('CLIENT',edClientName.Text) = edPassword.Text then begin
      TIWUserSession(WebApplication.Data).FClientName:= edClientName.Text;
      TIWUserSession(WebApplication.Data).FClientId:=
        StrToInt(TaxiDataModule.GetPersonParam('CLIENT', 'CLIENT_ID', edClientName.Text));
      Release;
      TfrmClientOrders.Create(WebApplication).Show;
    end else begin
      raise Exception.Create('Wrong password or user name');
    end;
  end
  else begin
    raise Exception.Create('You must enter the user name and the password');
  end;
end;

procedure TfrmClient.lnkNewClientClick(Sender: TObject);
begin
  Release;
  TfrmEditClient.Create(WebApplication).ShowNew;
end;

initialization
  TfrmClient.SetAsMainForm;

end.
