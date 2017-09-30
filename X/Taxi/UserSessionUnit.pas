unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes, TaxiDM;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
    { Private declarations }
  public
    { Public declarations }
    TaxiDataModule: TTaxiDataModule;
    FDriverId: Integer;
    FClientId: Integer;
    FClientName: String;
    FDriverName: String;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

constructor TIWUserSession.Create(AOwner: TComponent);
begin
  inherited;
  TaxiDataModule := TTaxiDataModule.Create(AOwner);
end;

end. 
