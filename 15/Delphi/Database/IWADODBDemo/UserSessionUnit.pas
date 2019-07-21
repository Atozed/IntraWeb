unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, Data.DB, Data.Win.ADODB;

type
  TIWUserSession = class(TIWUserSessionBase)
    DBConnection: TADOConnection;
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  IW.Common.SysTools;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  try
    DBConnection.Connected := True;
  except
    on E:Exception do
    begin
      LogFileAppend('Could not connect to Database: ' + E.Message);
    end;
  end;
end;

end.