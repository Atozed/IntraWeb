unit uDBBackup;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDBBackup = class
  private
    procedure BackupAccessDB(aConnection: TADOConnection; const aDirName: string);
  public
    procedure ExecuteBackup(aConnection: TADOConnection; const aDirName: string);
  end;

implementation

uses
  IW.Common.SysTools;

procedure TDBBackup.ExecuteBackup(aConnection: TADOConnection; const aDirName: string);
begin
  if not ForceDirectories(aDirName) then
    raise Exception.Create('Could not create output directory');

  // Do your DB backup here
  BackupAccessDB(aConnection, aDirName);
end;

// Replace this with your own DB Backup routine or whatever task you need to execute
procedure TDBBackup.BackupAccessDB(aConnection: TADOConnection; const aDirName: string);
var
  SourceFile, BackupFile: string;
begin
  if aConnection.Connected then
    aConnection.Close;

  // Get the file path of the Access database
  SourceFile := aConnection.ConnectionString;
  SourceFile := Copy(SourceFile, Pos('Data Source=', SourceFile) + Length('Data Source='), MaxInt);
  SourceFile := Trim(Copy(SourceFile, 1, Pos(';', SourceFile) - 1));

  // Set the backup file path
  BackupFile := IncludeTrailingPathDelimiter(aDirName) + ExtractFileName(SourceFile);

  // Perform the file copy operation
  IW.Common.SysTools.FileCopy(SourceFile, BackupFile, True);
end;

end.
