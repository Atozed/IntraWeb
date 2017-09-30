unit FlightsForm;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWTypes, DB, DBTables,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseWAPControl,
  IWControlWAP, IWCompLabelWAP, IWWAPControls, IWGridsWAP,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWWapContainerLayout,
  IWTemplateProcessorWAP, jpeg, IWExtCtrlsWAP, IWVCLComponent;

type
  TformFlights = class(TIWAppFormWAP)
    linkBack: TIWHyperLinkWAP;
    tablGrid: TIWGridWAP;
    IWTemplateProcessorWAP1: TIWTemplateProcessorWAP;
    imagAirPlane: TIWImageWAP;
    linkQuit: TIWHyperLinkWAP;
    procedure linkBackClick(Sender: TObject);
    procedure IWAppFormWAPRender(Sender: TObject);
    procedure linkQuitClick(Sender: TObject);
  public
    FQuery: string;
  end;

implementation

uses MainForm, DatamoduleUnit;

{$R *.dfm}


procedure TformFlights.linkBackClick(Sender: TObject);
begin
  DataModule1.qryFlights.Close;
  TformMain.Create(WebApplication).Show;
  Release;
end;

procedure TformFlights.IWAppFormWAPRender(Sender: TObject);
var
  i: Integer;
begin
  DataModule1.qryFlights.SQL.Clear;
  DataModule1.qryFlights.SQL.Add(FQuery);
  DataModule1.qryFlights.Open;
  with tablGrid do begin
    Cell[0, 0].Text := 'Flight       ';
    Cell[0, 1].Text := 'Origin       ';
    Cell[0, 2].Text := 'Destination  ';
    Cell[0, 3].Text := 'Date         ';
    Cell[0, 4].Text := 'ETA          ';
    Cell[0, 5].Text := 'Observations ';
    i := 1;
    while not DataModule1.qryFlights.Eof do begin
      RowCount := RowCount + 1;
      Cell[i, 0].Text := DataModule1.qryFlights.FieldByName('FlightNumber').AsString;
      Cell[i, 1].Text := DataModule1.qryFlights.FieldByName('OriginAirport').AsString;
      Cell[i, 2].Text := DataModule1.qryFlights.FieldByName('DestinationAirport').AsString;
      Cell[i, 3].Text := DataModule1.qryFlights.FieldByName('Date').AsString;
      Cell[i, 4].Text := DataModule1.qryFlights.FieldByName('ETA').AsString;
      Cell[i, 5].Text := DataModule1.qryFlights.FieldByName('Observations').AsString;
      inc(i);
      DataModule1.qryFlights.NExt;
    end;
  end;
end;


procedure TformFlights.linkQuitClick(Sender: TObject);
begin
  WebApplication.Terminate('Thank you');
end;

end.
