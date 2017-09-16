unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
{$I IWADOTest.inc}
interface

uses
  IWUserSessionBase, SysUtils, Classes, uDMDataMain;

type
  TIWUserSession = class(TIWUserSessionBase)
  private
   fDataMain: TDMDataMain;
   function GetDataMain: TDMDataMain;
    { Private declarations }
  public
    { Public declarations }
   property DataMain: TDMDataMain read GetDataMain;
   destructor Destroy; override;
  end;

implementation

uses
  ServerController;

{$R *.dfm}

destructor TIWUserSession.Destroy;
begin
{$ifdef IW_USE_DATAMODULE_POOL}
  UnlockDataModule(fDataMain);
  fDataMain := nil;
{$endif}
 inherited;
end;

function TIWUserSession.GetDataMain: TDMDataMain;
begin
 if not assigned(fDataMain) then
 begin
  {$ifdef IW_USE_DATAMODULE_POOL}
   fDataMain := LockDatamodule; {you can also use Create(self) but you have to remove the Destroy Method also}
  {$else}
   fDataMain := TDMDataMain.Create(self);
  {$endif}
 end;
 result := fDataMain;
end;

end.
