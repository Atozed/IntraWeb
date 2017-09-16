unit uDMDataMain;

interface
{$I IWADOTest.inc}
uses
  SysUtils, Classes, DB, ADODB;

type
  TDMDataMain = class(TDataModule)
    cnnSystem: TADOConnection;
    sqlTableMaster: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure DoActivateTables(AActive: boolean=true);
  end;

{$IFDEF IW_APP}
 function DMDataMain: TDMDataMain;
{$ELSE}
var
  DMDataMain: TDMDataMain;
{$ENDIF}
const
 C_DbConnString='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s;Persist Security Info=False';

implementation

{$R *.dfm}

//IW_APP is defined in the project/options/conditional defines
//This will make the same datamodule to be used either in a
//desktop application or in an Intraweb/multithreaded application
//where each thread need its own datamodule instance

{$IFDEF IW_APP}
uses ServerController, UserSessionUnit, IWApplication;
{$ENDIF}

{$IFDEF IW_APP}
 function DMDataMain: TDMDataMain;
 begin
   Result := UserSession.DataMain;
 end;
{$ENDIF}

procedure TDMDataMain.DataModuleCreate(Sender: TObject);
begin
 cnnSystem.ConnectionString := Format(C_DbConnString, [IncludeTrailingPathDelimiter( {$IFDEF IW_APP} gGetAppPath {$ELSE} ParamStr(0) {$ENDIF})+'..\data\iwdemo.mdb']);
end;

procedure TDMDataMain.DataModuleDestroy(Sender: TObject);
begin
 DoActivateTables(false);
 cnnSystem.Connected := false;
end;

procedure TDMDataMain.DoActivateTables(AActive: boolean);
var _idx:integer;
begin
 for _idx := 0 to ComponentCount-1 do
 begin
  if Components[_idx] is TCustomADODataSet then
     TCustomADODataSet(Components[_idx]).Active := AActive;
 end;
end;
end.
