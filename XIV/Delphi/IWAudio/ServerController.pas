unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, DataModuleUnit, IWDataModulePool;

type
  TIWServerController = class(TIWServerControllerBase)
    Pool: TIWDataModulePool;
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseCreate(Sender: TObject);

    procedure PoolCreateDataModule(var ADataModule: TDataModule);
    procedure PoolFreeDataModule(var ADataModule: TDataModule);
  private
    
  public
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;
  function LockDataModule: TDataModule1;
  procedure UnlockDataModule(ADataModule: TDataModule1);

implementation

{$R *.dfm}

uses
  IWInit, IWGlobal;

function UserSession: TIWUserSession;
begin
  Result := TIWUserSession(WebApplication.Data);
end;

function IWServerController: TIWServerController;
begin
  Result := TIWServerController(GServerController);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
begin
  Pool.Active := True;
end;

procedure TIWServerController.PoolCreateDataModule(var ADataModule: TDataModule);
begin
  ADataModule := TDataModule1.Create(nil);
end;

procedure TIWServerController.PoolFreeDataModule(var ADataModule: TDataModule);
begin
  FreeAndNil(ADataModule);
end;

function LockDataModule: TDataModule1;
begin
  Result := TDataModule1(TIWServerController(GServerController).Pool.Lock);
end;

procedure UnlockDataModule(ADataModule: TDataModule1);
var
  LTemp: TDataModule;
begin
  LTemp := ADataModule;
  TIWServerController(GServerController).Pool.Unlock(LTemp);
end;


initialization
  TIWServerController.SetServerControllerClass;

end.

