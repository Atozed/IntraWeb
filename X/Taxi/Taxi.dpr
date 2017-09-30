program Taxi;

//IMPORTANT:
//  Please see the readme.txt document
//
{%File 'readme.txt'}

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Driver in 'Driver.pas' {frmDriver: TIWFormModuleBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  TaxiDM in 'TaxiDM.pas' {TaxiDataModule: TDataModule},
  Client in 'Client.pas' {frmClient: TIWAppFormWAP},
  EditClient in 'EditClient.pas' {frmEditClient: TIWAppFormWAP},
  ClientOrders in 'ClientOrders.pas' {frmClientOrders: TIWAppFormWAP},
  EditOrder in 'EditOrder.pas' {frmEditOrder: TIWAppFormWAP},
  DriverOrders in 'DriverOrders.pas' {frmDriverOrders: TIWAppFormWAP},
  EditOrderByDriver in 'EditOrderByDriver.pas' {frmEditOrderByDriver: TIWAppFormWAP};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
