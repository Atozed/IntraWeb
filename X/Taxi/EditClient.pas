unit EditClient;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWColor, IWTypes,
  IWCompEditWAP, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseWAPControl, IWControlWAP, IWCompLabelWAP, IWDBStdCtrlsWAP;

type
  TfrmEditClient = class(TIWAppFormWAP)
    IWLabelWAP1: TIWLabelWAP;
    IWLabelWAP2: TIWLabelWAP;
    IWLabelWAP3: TIWLabelWAP;
    IWLabelWAP4: TIWLabelWAP;
    edName: TIWDBEditWAP;
    edAddress: TIWDBEditWAP;
    edPhone: TIWDBEditWAP;
    IWLabelWAP5: TIWLabelWAP;
    edPassword: TIWEditWAP;
    edRetypePassword: TIWEditWAP;
    IWLabelWAP6: TIWLabelWAP;
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
    procedure IWAppFormWAPDestroy(Sender: TObject);
  public
    procedure ShowNew;
  end;

implementation

uses DB, TaxiDM, ClientOrders, UserSessionUnit;

{$R *.dfm}


procedure TfrmEditClient.IWAppFormWAPDefaultAction(Sender: TObject);
var LCLIENT_ID: Integer;
begin
  if edPassword.Text <> edRetypePassword.Text then begin
    raise Exception.Create('Please retype your password');
  end;

  if edName.DataSource.DataSet.State in [dsEdit,dsInsert] then begin
    LCLIENT_ID:= TaxiDataModule.GetNextID('CLIENT');
    edName.DataSource.DataSet.FieldByName('CLIENT_ID').AsInteger:= LCLIENT_ID;
    edName.DataSource.DataSet.FieldByName('Password').AsString:= edPassword.Text;
    edName.DataSource.DataSet.Post;
    TIWUserSession(WebApplication.Data).FClientId:= LCLIENT_ID;
  end;

  Release;
  TfrmClientOrders.Create(WebApplication).Show;
end;

procedure TfrmEditClient.ShowNew;
begin
  edName.DataSource.DataSet.Insert;
  Show;
end;

procedure TfrmEditClient.IWAppFormWAPDestroy(Sender: TObject);
begin
{
  if edName.DataSource.DataSet.State in [dsEdit,dsInsert] then begin
    edName.DataSource.DataSet.Cancel;
  end;
  }
end;

end.
