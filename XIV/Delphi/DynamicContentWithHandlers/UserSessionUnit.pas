unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Datasnap.DBClient;

type
  TIWUserSession = class(TIWUserSessionBase)
    ClientDataSet1: TClientDataSet;
    ClientDataSet1id: TIntegerField;
    ClientDataSet1content: TBlobField;
  private
    { Private declarations }
  public
    { Public declarations }
    function GetDataSet: TDataSet;
  end;

implementation

{$R *.dfm}

uses
  IWGlobal;

{ TIWUserSession }

// this function initializes the DataSet containing the reports we want to serve
// it is called from within TContentReport.Execute() method
function TIWUserSession.GetDataSet: TDataSet;
begin
  if not ClientDataSet1.Active then begin
    ClientDataSet1.LoadFromFile(gSC.ContentPath + 'Data.cds');
  end;
  Result := ClientDataSet1;
end;

end.