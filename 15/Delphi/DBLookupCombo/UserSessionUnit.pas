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
    cdsCountry: TClientDataSet;
    cdsState: TClientDataSet;
    cdsCity: TClientDataSet;
    dsCountry: TDataSource;
    dsState: TDataSource;
    dsCity: TDataSource;
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
begin
  // these are the tables used in this demo. Once they have been loaded at design time
  // we don't need to reload them at runtime. But it could be done, of course.

  //cdsCountry.LoadFromFile(TIWAppInfo.GetAppPath + 'Tables\Country.xml');
  //cdsState.LoadFromFile(TIWAppInfo.GetAppPath + 'Tables\State.xml');
  //cdsCity.LoadFromFile(TIWAppInfo.GetAppPath + 'Tables\City.xml');
end;

end.
