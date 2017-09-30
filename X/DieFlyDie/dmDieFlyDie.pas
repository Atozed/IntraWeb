unit dmDieFlyDie;

//            
//  IMPORTANT:
//  Please see the readme.txt document!
//


interface

uses
  {$IFDEF VER130}Forms,{$ENDIF}SysUtils, Classes, DBISAMTb, DB;

type
  TdmMain = class(TDataModule)
    qrUsers: TDBISAMQuery;
    DBFly: TDBISAMDatabase;
    qrProducts: TDBISAMQuery;
    qrCategories: TDBISAMQuery;
    qrCart: TDBISAMQuery;
    qrReviews: TDBISAMQuery;
    qrPopularProducts: TDBISAMQuery;
    sessionFly: TDBISAMSession;
    qrSearch: TDBISAMQuery;
    qrOrders: TDBISAMQuery;
    qrOrderDetails: TDBISAMQuery;
    tbOrders: TDBISAMTable;
    qrWelcomeUsers: TDBISAMQuery;
    qrCheckUsers: TDBISAMQuery;
    qrFinalizeUsers: TDBISAMQuery;
    qrImageProducts: TDBISAMQuery;
    qrDisplayProducts: TDBISAMQuery;
    qrCategoryProducts: TDBISAMQuery;
    qrRelatedProducts: TDBISAMQuery;
    qrShoppingCart: TDBISAMQuery;
    qrCheckOutOrder: TDBISAMQuery;
    qrInsertOrderDetails: TDBISAMQuery;
    qrInsertReview: TDBISAMQuery;
  private
  public
  end;

  function dmFly: TdmMain;

implementation
{$R *.dfm}

uses
  IWServer, IWInit,
  ServerController;

function dmFly: TdmMain;
begin
  Result := TUserSession(WebApplication.Data).FlyDM;
end;

end.
