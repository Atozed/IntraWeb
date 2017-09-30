unit DriverOrders;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWWAPControls, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWCompListBoxWAP, IWDBStdCtrlsWAP;

type
  TfrmDriverOrders = class(TIWAppFormWAP)
    IWDBLookupListBoxWAP1: TIWDBLookupListBoxWAP;
    lnkUnassignedOrders: TIWHyperLinkWAP;
    lnkUnassignOrder: TIWHyperLinkWAP;
    lnkEditOrder: TIWHyperLinkWAP;
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
  public
  end;

implementation

uses TaxiDM, UserSessionUnit, EditOrderByDriver;

{$R *.dfm}


procedure TfrmDriverOrders.IWAppFormWAPCreate(Sender: TObject);
begin
  TaxiDataModule.qryOrdersByDriver.Close;
  TaxiDataModule.qryOrdersByDriver.ParamByName('DRIVER_ID').AsInteger:=
    TIWUserSession(WebApplication.Data).FDriverId;
  TaxiDataModule.qryOrdersByDriver.Open;
end;

procedure TfrmDriverOrders.IWAppFormWAPDefaultAction(Sender: TObject);
var LfrmEditOrderByDriver: TfrmEditOrderByDriver;
begin
  Release;
  LfrmEditOrderByDriver:= TfrmEditOrderByDriver.Create(WebApplication);
  LfrmEditOrderByDriver.ShowOrder(TaxiDataModule.qryOrdersByDriver.FieldByName('TAXI_ORDER_ID').AsInteger);
end;

end.
