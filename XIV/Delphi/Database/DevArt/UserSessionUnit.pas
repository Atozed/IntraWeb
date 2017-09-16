unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, MemDS, DBAccess, MSAccess;

type
  TIWUserSession = class(TIWUserSessionBase)
    MSConnection1: TMSConnection;
    MSQuery1: TMSQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.