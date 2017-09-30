unit EditOrderByDriver;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWDBStdCtrlsWAP, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWCompLabelWAP, IWCompListBoxWAP,
  IWWAPControls, IWCompEditWAP, IWCompCheckBoxWAP;

type
  TfrmEditOrderByDriver = class(TIWAppFormWAP)
    IWLabelWAP1: TIWLabelWAP;
    lbDate: TIWDBLabelWAP;
    IWLabelWAP2: TIWLabelWAP;
    lbTime: TIWDBLabelWAP;
    IWLabelWAP3: TIWLabelWAP;
    IWDBLookupComboBoxWAP1: TIWDBLookupComboBoxWAP;
    IWLabelWAP4: TIWLabelWAP;
    IWDBLookupComboBoxWAP2: TIWDBLookupComboBoxWAP;
    lnkUnassign: TIWHyperLinkWAP;
    IWLabelWAP5: TIWLabelWAP;
    IWDBEditWAP1: TIWDBEditWAP;
    Completed: TIWDBCheckBoxWAP;
    Refused: TIWDBCheckBoxWAP;
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
    procedure lnkRefusedClick(Sender: TObject);
    procedure lnkUnassignClick(Sender: TObject);
  public
    procedure ShowOrder(LTaxiOrderId: Integer);
  end;

implementation

uses DB, TaxiDM, DriverOrders;

{$R *.dfm}

procedure TfrmEditOrderByDriver.ShowOrder(LTaxiOrderId: Integer);
begin
  with TaxiDataModule.tblTaxiOrder do
  begin
    if FindKey([LTaxiOrderId]) then
    begin
      Show;
    end else
    begin
      // to do exception
    end;
  end;
end;

procedure TfrmEditOrderByDriver.IWAppFormWAPDefaultAction(Sender: TObject);
begin
  if TaxiDataModule.tblTaxiOrder.State in [dsEdit,dsInsert] then begin
    TaxiDataModule.tblTaxiOrder.Post;
  end;
  Release;
  TfrmDriverOrders.Create(WebApplication).Show;
end;

procedure TfrmEditOrderByDriver.lnkRefusedClick(Sender: TObject);
begin
//
end;

procedure TfrmEditOrderByDriver.lnkUnassignClick(Sender: TObject);
begin
  with TaxiDataModule.tblTaxiOrder do
  begin
    if not (State in [dsEdit,dsInsert]) then begin
      Edit;
    end;
    FieldByName('DRIVER_ID').AsInteger:= 0;
    Post;
  end;
  Release;
  TfrmEditOrderByDriver.Create(WebApplication).Show;
end;

end.
