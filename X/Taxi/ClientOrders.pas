unit ClientOrders;
    
interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWCompListBoxWAP, IWDBStdCtrlsWAP, IWWAPControls;

type
  TfrmClientOrders = class(TIWAppFormWAP)
    IWDBLookupListBoxWAP1: TIWDBLookupListBoxWAP;
    Order: TIWHyperLinkWAP;
    lnkEditOrder: TIWHyperLinkWAP;
    lnkNewOrder: TIWHyperLinkWAP;
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure IWAppFormWAPDestroy(Sender: TObject);
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
    procedure lnkEditOrderClick(Sender: TObject);
    procedure lnkNewOrderClick(Sender: TObject);
  public
  end;

implementation

uses TaxiDM, UserSessionUnit, EditOrder;

{$R *.dfm}


procedure TfrmClientOrders.IWAppFormWAPCreate(Sender: TObject);
begin
  TaxiDataModule.qryOrdersByClient.Close;
  TaxiDataModule.qryOrdersByClient.ParamByName('CLIENT_ID').AsInteger:=
    TIWUserSession(WebApplication.Data).FClientId;
  TaxiDataModule.qryOrdersByClient.Open;
end;

procedure TfrmClientOrders.IWAppFormWAPDestroy(Sender: TObject);
begin
//  TaxiDataModule.qryOrdersByClient.Close;
end;

procedure TfrmClientOrders.IWAppFormWAPDefaultAction(Sender: TObject);
begin
//
end;

procedure TfrmClientOrders.lnkEditOrderClick(Sender: TObject);
begin
//
end;

procedure TfrmClientOrders.lnkNewOrderClick(Sender: TObject);
begin
  Release;
  TfrmEditOrder.Create(WebApplication).ShowNew;
end;

end.
