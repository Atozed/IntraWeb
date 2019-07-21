unit udmCustomers;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmCustomers = class(TDataModule)
    qryCustomers: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// REMOVE THIS -> Global vars CAN'T be used in multi-threaded applications!
//var
//  dmCustomers: TdmCustomers;

implementation

{$R *.dfm}

// ServerController contains function UserSession which gives us access to UserSession instance
// for this specific session
uses
  ServerController;

procedure TdmCustomers.DataModuleCreate(Sender: TObject);
begin
  qryCustomers.Connection := UserSession.DBConnection;
end;

end.
