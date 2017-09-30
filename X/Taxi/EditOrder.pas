unit EditOrder;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWCompEditWAP, IWDBStdCtrlsWAP, IWCompLabelWAP;

type
  TfrmEditOrder = class(TIWAppFormWAP)
    edAddress: TIWDBEditWAP;
    edTaxiOrderTime: TIWDBEditWAP;
    IWLabelWAP1: TIWLabelWAP;
    IWLabelWAP2: TIWLabelWAP;
    IWLabelWAP3: TIWLabelWAP;
    IWDBEditWAP1: TIWDBEditWAP;
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
    procedure IWAppFormWAPDestroy(Sender: TObject);
  public
    procedure ShowNew;
  end;

implementation

uses DB, TaxiDM, ClientOrders, UserSessionUnit;

{$R *.dfm}

procedure TfrmEditOrder.ShowNew;
begin
  edAddress.DataSource.DataSet.Insert;
  edAddress.DataSource.DataSet.FieldByName('ORDER_DATE').AsDateTime:= Date;
  Show;
end;

procedure TfrmEditOrder.IWAppFormWAPDefaultAction(Sender: TObject);
var LTAXI_ORDER_ID: Integer;
begin
  with edAddress.DataSource.DataSet do begin
    if State in [dsEdit,dsInsert] then begin
      if State = dsInsert then begin
        LTAXI_ORDER_ID:= TaxiDataModule.GetNextID('TAXI_ORDER');
        FieldByName('DRIVER_ID').AsInteger:= TaxiDataModule.ChooseAvailableDriver;
        FieldByName('TAXI_ORDER_ID').AsInteger:= LTAXI_ORDER_ID;
        FieldByName('CLIENT_ID').AsInteger:= TIWUserSession(WebApplication.Data).FClientId;
      end;
      Post;
    end;
  end;
  Release;
  TfrmClientOrders.Create(WebApplication).Show;
end;

procedure TfrmEditOrder.IWAppFormWAPDestroy(Sender: TObject);
begin
{
  if edAddress.DataSource.DataSet.State in [dsEdit,dsInsert] then begin
    edAddress.DataSource.DataSet.Cancel;
  end;
  }
end;

end.
