unit DatamoduleUnit;

interface

uses
  {$IFDEF Linux}QForms, {$ELSE}Forms, {$ENDIF}
  SysUtils, Classes, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    Database1: TDatabase;
    Session1: TSession;
    qryOriginList: TQuery;
    qryDestinationList: TQuery;
    qryFlights: TQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
  public
  end;

// Procs
  function DataModule1: TDataModule1;

implementation
{$R *.dfm}

uses
  IWInit,
  ServerController;

// Since we are threaded we cannot use global variables to store form / datamodule references
// so we store them in WebApplication.Data and we could reference that each time, but by creating
// a function like this our other code looks "normal" almost as if its referencing a global.
// This function is not necessary but it makes the code in the main form which references this
// datamodule a lot neater.
// Without this function every time we would reference this datamodule we would use:
//   TDataModule1(WebApplication.Data).Datamodule.<method / component>
// By creating this procedure it becomes:
//   TDataModule1.<method / component>
// Which is just like normal Delphi code.

function DataModule1: TDataModule1;
begin
  Result := TUserSession(WebApplication.Data).Datamodule1;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  Database1.Params.Values['Path'] := ExtractFilePath(ParamStr(0)) +
    'Data';
  Database1.Open;
end;

procedure TDataModule1.DataModuleDestroy(Sender: TObject);
begin
  Database1.Close;
end;

end.
