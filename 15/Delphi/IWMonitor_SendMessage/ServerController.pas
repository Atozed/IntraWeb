unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  UserSessionUnit, IWApplication, IWAppForm, IW.Browser.Browser,
  IW.Common.Threads;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication);
    procedure IWServerControllerBaseCreate(Sender: TObject);
    procedure IWServerControllerBaseDestroy(Sender: TObject);
  private
    FLock: TIWSlimReaderWriter;  // lightweight alternative to a TCriticalSection
    FSessionMessage: string;
    function GetSessionMessage: string;
    procedure SetSessionMessage(const AValue: string);
  public
    property SessionMessage: string read GetSessionMessage write SetSessionMessage;
  end;

  function UserSession: TIWUserSession;
  function IWServerController: TIWServerController;

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

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication);
begin
  ASession.Data := TIWUserSession.Create(nil, ASession);
end;

procedure TIWServerController.IWServerControllerBaseCreate(Sender: TObject);
begin
  FLock := TIWSlimReaderWriter.Create;
end;

procedure TIWServerController.IWServerControllerBaseDestroy(Sender: TObject);
begin
  FLock.Free;
end;

// The SessionMessage property is global. We need to protect against concurrent access
// Better to use the TIWSlimReaderWriter which is a fast multi-reader/single-writer syncrhonizer object
function TIWServerController.GetSessionMessage: string;
begin
  FLock.BeginRead;
  try
    Result := FSessionMessage;
  finally
    FLock.EndRead;
  end;
end;

procedure TIWServerController.SetSessionMessage(const AValue: string);
begin
  FLock.BeginWrite;
  try
    FSessionMessage := AValue;
  finally
    FLock.EndWrite;
  end;
end;

initialization
  TIWServerController.SetServerControllerClass;
  Randomize;

end.

