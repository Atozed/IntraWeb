program FlightInfo;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  DatamoduleUnit in 'DatamoduleUnit.pas' {DataModule1: TDataModule},
  MainForm in 'MainForm.pas' {formMain: TIWAppFormWAP},
  FlightsForm in 'FlightsForm.pas' {formFlights: TIWAppFormWAP};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
