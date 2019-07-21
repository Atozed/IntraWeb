unit uFrmCustomers;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, udmCustomers,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox;

type
  TFrmCustomers = class(TIWAppForm)
    IWListbox1: TIWListbox;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormShow(Sender: TObject);
  private
    dm: TdmCustomers;
  public
  end;

implementation

{$R *.dfm}

uses
  DB;

procedure TFrmCustomers.IWAppFormCreate(Sender: TObject);
begin
  dm := TdmCustomers.Create(Self);
end;

procedure TFrmCustomers.IWAppFormShow(Sender: TObject);
var
  ds: TDataSet;
begin
  ds := dm.qryCustomers;
  ds.Open;
  try
    ds.DisableControls;   // When using ADO, DisableControls *does* make difference in performance when looping through records
    ds.First;
    while not ds.EOF do
    begin
      IWListbox1.Items.Add(ds.FieldByName('CompanyName').AsString);
      ds.Next;
    end;
  finally
    ds.Close;
  end;
end;

initialization
  TFrmCustomers.SetAsMainForm;

end.
