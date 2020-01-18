unit udmMain;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient;

type
  TdmMain = class(TDataModule)
    cdsCountry: TClientDataSet;
    cdsCountryName: TStringField;
    cdsCountryCapital: TStringField;
    cdsCountryContinent: TStringField;
    cdsCountryArea: TFloatField;
    cdsCountryPopulation: TFloatField;
    cdsCustomer: TClientDataSet;
    cdsCustomerCustNo: TFloatField;
    cdsCustomerCompany: TStringField;
    cdsCustomerAddr1: TStringField;
    cdsCustomerAddr2: TStringField;
    cdsCustomerCity: TStringField;
    cdsCustomerState: TStringField;
    cdsCustomerZip: TStringField;
    cdsCustomerCountry: TStringField;
    cdsCustomerPhone: TStringField;
    cdsCustomerFAX: TStringField;
    cdsCustomerTaxRate: TFloatField;
    cdsCustomerContact: TStringField;
    cdsCustomerLastInvoiceDate: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenDataSets;
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmMain }

procedure TdmMain.OpenDataSets;
begin

end;

end.
