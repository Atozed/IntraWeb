unit uDM;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxExportBaseDialog, frxExportPDF;

type
  TdmReport1 = class(TDataModule)
    frxReport1: TfrxReport;
    StringDS: TfrxUserDataSet;
    frxPDFExport1: TfrxPDFExport;
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
  private
    { Private declarations }
    sl: TStringList;
  public
    { Public declarations }
    procedure PrintReport(const aFileName: string);
  end;

var
  dmReport1: TdmReport1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule13 }

procedure TdmReport1.PrintReport(const aFileName: string);
begin
  sl := TStringList.Create;
  sl.Add('1');
  sl.Add('2');
  sl.Add('3');
  sl.Add('4');
  sl.Add('5');
  sl.Add('6');
  sl.Add('7');
  sl.Add('8');
  sl.Add('9');
  StringDS.RangeEnd := reCount;
  StringDS.RangeEndCount := sl.Count;
  frxReport1.Export(frxPDFExport1);
end;

procedure TdmReport1.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
  if CompareText(VarName, 'element') = 0 then
    Value := sl[StringDS.RecNo];
end;

end.
