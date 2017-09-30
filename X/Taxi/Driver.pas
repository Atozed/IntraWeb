unit Driver;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWCompEditWAP, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWCompListBoxWAP, IWDBStdCtrlsWAP,
  IWCompLabelWAP, DB, dbisamtb;

type
  TfrmDriver = class(TIWAppFormWAP)
    IWLabelWAP2: TIWLabelWAP;
    lcbDriverName: TIWDBLookupComboBoxWAP;
    IWLabelWAP3: TIWLabelWAP;
    edPassword: TIWEditWAP;
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
  public
  end;

implementation

uses TaxiDM, UserSessionUnit, DriverOrders;

{$R *.dfm}


procedure TfrmDriver.IWAppFormWAPDefaultAction(Sender: TObject);
var LDriverID: Integer;
    LDriverName: String;
begin
  LDriverID:= lcbDriverName.ListSource.DataSet.FieldByName(lcbDriverName.KeyField).AsInteger;
  LDriverName:= lcbDriverName.ListSource.DataSet.FieldByName('NAME').AsString;

  if LDriverID = 0 then begin
    raise Exception.Create('You need to specify your name');
  end;

  if TaxiDataModule.GetPassword('DRIVER',LDriverName) = edPassword.Text then begin
    TIWUserSession(WebApplication.Data).FDriverName:= LDriverName;
    TIWUserSession(WebApplication.Data).FDriverID:= LDriverID;
    Release;
    TfrmDriverOrders.Create(WebApplication).Show;
  end else begin
    raise Exception.Create('Wrong password or user name');
  end;

end;

initialization

end.
