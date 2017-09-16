unit ServerMethodsUnit1;

interface

uses
  SysUtils, Classes, DSServer, DBXMSSQL, FMTBcd, Provider, DB, SqlExpr,
  DBClient;

type
  TServerMethods1 = class(TDSServerModule)
    SQLConnection1: TSQLConnection;
    sqlEmployees: TSQLDataSet;
    dspEmployees: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
  end;

implementation

{$R *.dfm}

uses StrUtils,MainForm;

procedure TServerMethods1.DSServerModuleCreate(Sender: TObject);
begin
//ClientDataSet1.FileName:=MainForm.DBfileName;
ClientDataSet1.FileName:=ExtractFilePath(ParamStr(0))+'biolife.xml';
ClientDataSet1.Active:=true;
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := StrUtils.ReverseString(Value);
end;

end.

