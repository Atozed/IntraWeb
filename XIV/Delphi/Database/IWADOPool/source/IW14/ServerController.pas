unit ServerController;

interface
{$I IWADOTest.inc}
uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IWDataModulePool, uDMDataMain;

type
  TIWServerController = class(TIWServerControllerBase)
    Pool: TIWDataModulePool;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure PoolCreateDataModule(var ADataModule: TDataModule);
    procedure PoolFreeDataModule(var ADataModule: TDataModule);
    procedure IWServerControllerBaseCreate(Sender: TObject);

  private

  public
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;
 {$ifdef IW_USE_DATAMODULE_POOL}
  function LockDataModule: TDMDataMain;
  procedure UnlockDataModule(ADataModule: TDMDataMain);
 {$endif}
implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);

end;

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
begin
{$ifdef IW_USE_DATAMODULE_POOL}
 Pool.Active := true;
{$endif}
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

{$ifdef IW_USE_DATAMODULE_POOL}
function LockDataModule: TDMDataMain;
begin
  Result := TDMDataMain(TIWServerController(GServerController).Pool.Lock);
end;

procedure UnlockDataModule(ADataModule: TDMDataMain);
var
  LTemp: TDataModule;
begin
  LTemp := ADataModule;
  TIWServerController(GServerController).Pool.Unlock(LTemp);
end;
{$endif}

procedure TIWServerController.PoolCreateDataModule(var ADataModule: TDataModule);
begin
 ADataModule := TDMDataMain.Create(nil);
end;

procedure TIWServerController.PoolFreeDataModule(var ADataModule: TDataModule);
begin
 FreeAndNil( ADataModule );
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

