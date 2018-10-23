unit udmReport1;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmReport1 = class(TDataModule)
  private
    { Private declarations }
    procedure DoPrintReport(const aFileName: string);
  public
    { Public declarations }
    class procedure PrintReport(const aFileName: string);
  end;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmReport1 }

uses
  libjpfpdf;

class procedure TdmReport1.PrintReport(const aFileName: string);
var
  dm: TdmReport1;
begin
  dm := TdmReport1.Create(nil);
  try
    dm.DoPrintReport(aFileName);
  finally
    dm.Free;
  end;
end;

procedure TdmReport1.DoPrintReport(const aFileName: string);
var
  JPFpdf1: TJPFpdf;
begin
  FormatSettings.DecimalSeparator := ',';
  // we are using TJPFpdf class to generate a PDF file for us.
  // We could have used anything here, e.g. a FastReport, ReportBuilder, Rave, QuickReports, etc.
  JPFpdf1 := TJPFpdf.Create;
  with JPFpdf1 do begin
    AddPage;
    SetFont(ffHelvetica, fsNormal, 16);
    Writer(6.5,'This is a report printed from within CGI application.');
    Ln;
    Writer(6.5,'The CGI application is executed from an IW application through');
    Ln;
    Writer(6.5,'a IWCGIRunner component.');
    Ln; Ln; Ln;
    SetFont(ffHelvetica, fsNormal, 12);
    Writer(6.5, 'Date/Time: ' + DateTimeToStr(Now));
    Ln;
    Writer(6.5, 'File: ' + aFileName);
    SaveToFile(aFileName);
    Free;
  end;
end;

end.
