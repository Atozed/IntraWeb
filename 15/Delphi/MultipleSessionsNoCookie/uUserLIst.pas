unit uUserList;

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections,
  IW.Common.Threads;

type
  TUser = class
  private
    FId: string;
    FName: string;
    FPw: string;
  public
    property Id: string read FId write FId;
    property Name: string read FName write FName;
    property Pw: string read FPw write FPw;
  end;

  TUserList = class(TObjectList<TUser>)
  private
    class var FInstance: TUserList;
  private
    FLock: TIWSlimReaderWriter;
    class procedure Finalize;
  public
    constructor Create;
    destructor Destroy; override;
    class property Instance: TUserList read FInstance;
    function IsValid(const AName, APw: string; var AId: string): Boolean; overload;
    function IsValid(const AId: string; out AName: string): Boolean; overload;
    function FindByName(const AName: string): Integer;
    function FindById(const AId: string): Integer;
  end;

implementation

uses
  IW.Common.SysTools, System.StrUtils;

{ TUserList }

constructor TUserList.Create;
begin
  inherited Create(True);
  FLock := TIWSlimReaderWriter.Create;
end;

destructor TUserList.Destroy;
begin
  FLock.Free;
  inherited;
end;

class procedure TUserList.Finalize;
begin
  FInstance.Free;
  FInstance := nil;
end;

function TUserList.IsValid(const AName, APw: string; var AId: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  FLock.BeginRead;
  try
    for i := 0 to Count - 1 do
    begin
      if SameText(Items[i].FName, AName) and SameStr(Items[i].FPw, APw) then
      begin
        AId := Items[i].FId;
        Result := True;
        Exit;
      end;
    end;
  finally
    FLock.EndRead;
  end;
end;

function TUserList.IsValid(const AId: string; out AName: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  FLock.BeginRead;
  try
    for i := 0 to Count - 1 do
    begin
      if SameStr(Items[i].FId, AId) then
      begin
        AName := Items[i].FName;
        Result := True;
        Exit;
      end;
    end;
  finally
    FLock.EndRead;
  end;
end;

function TUserList.FindByName(const AName: string): Integer;
var
  i: Integer;
begin
  Result := -1;
  FLock.BeginRead;
  try
    for i := 0 to Count - 1 do
    begin
      if SameText(Items[i].FName, AName) then
      begin
        Result := i;
        Exit;
      end;
    end;
  finally
    FLock.EndRead;
  end;
end;

function TUserList.FindById(const AId: string): Integer;
var
  i: Integer;
begin
  Result := -1;
  FLock.BeginRead;
  try
    for i := 0 to Count - 1 do
    begin
      if SameStr(Items[i].FId, AId) then
      begin
        Result := i;
        Exit;
      end;
    end;
  finally
    FLock.EndRead;
  end;
end;

initialization
  TUserList.FInstance := TUserList.Create;

finalization
  TUserList.Finalize;

end.
