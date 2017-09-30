unit MainForm;

interface

uses
  Classes, SysUtils, IWAppFormWAP, IWApplication, IWTypes,
  IWCompListBoxWAP, IWCompEditWAP, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseWAPControl, IWControlWAP, IWCompLabelWAP, DB,
  DBTables, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWWapContainerLayout, IWTemplateProcessorWAP, IWCompButtonWAP, jpeg,
  IWExtCtrlsWAP, IWWAPControls, IWVCLComponent;

type
  TformMain = class(TIWAppFormWAP)
    IWLabelWAP3: TIWLabelWAP;
    IWLabelWAP4: TIWLabelWAP;
    editFlightNum: TIWEditWAP;
    DataSource1: TDataSource;
    cboxOrigin: TIWComboBoxWAP;
    cboxDestination: TIWComboBoxWAP;
    lablWarning: TIWLabelWAP;
    IWTemplateProcessorWAP1: TIWTemplateProcessorWAP;
    butnSubmit: TIWButtonWAP;
    imagAirPlane: TIWImageWAP;
    linkQuit: TIWHyperLinkWAP;
    procedure IWAppFormWAPCreate(Sender: TObject);
    procedure IWAppFormWAPDefaultAction(Sender: TObject);
    procedure linkQuitClick(Sender: TObject);
  public
  end;

implementation

uses FlightsForm, DatamoduleUnit;
{$R *.dfm}

procedure TformMain.IWAppFormWAPCreate(Sender: TObject);
begin
  with DataModule1.qryOriginList do begin
    Open;
    while not Eof do begin
      cboxOrigin.Items.Add(FieldByName('OriginAirport').AsString);
      Next;
    end;
    Close;
  end;
  with DataModule1.qryDestinationList do begin
    Open;
    while not Eof do begin
      cboxDestination.Items.Add(FieldByname('DestinationAirport').AsString);
      Next;
    end;
    Close;
  end;
end;

procedure TformMain.IWAppFormWAPDefaultAction(Sender: TObject);
begin
  if editFlightNum.Text <> '' then begin
    with TformFlights.Create(WebApplication) do begin
      FQuery := 'Select * from flights where FlightNumber=' + chr(39) + UpperCase(editFlightNum.Text) + chr(39);
      Show;
    end;
    Release;
  end else if (cboxOrigin.ItemIndex >= 0) and (cboxDestination.ItemIndex >= 0) then begin
    with TformFlights.Create(WebApplication) do begin
      FQuery := 'Select * from flights where OriginAirport=' + chr(39) +
        cboxOrigin.Items[cboxOrigin.Itemindex] + chr(39) + ' and DestinationAirport=' + chr(39) +
        cboxDestination.Items[cboxDestination.ItemIndex] + chr(39);
      Show;
    end;
    Release;
  end else begin
    lablWarning.Visible := True;
  end;
end;

procedure TformMain.linkQuitClick(Sender: TObject);
begin
  WebApplication.Terminate('Thank you');
end;

initialization
  TformMain.SetAsMainForm;
end.
