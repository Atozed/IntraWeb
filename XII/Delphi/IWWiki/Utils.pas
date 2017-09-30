unit Utils;

interface

uses SysUtils;

function StrIsEmpty(Str: String): Boolean;
function ReadStringFromIni(Section, Setting: String; IniFileName: TFileName): String;

implementation

uses IniFiles;

function ReadStringFromIni(Section, Setting: String; IniFileName: TFileName): String;
var
  IniFile: TMemIniFile;
begin
  Result := '';
  IniFile := TMemIniFile.Create(IniFileName);
  try
    Result := IniFile.ReadString(Section, Setting, '');
  finally
    IniFile.Free;
  end;
end;

function StrIsEmpty(Str: String): Boolean;
begin
  Result := Trim(Str) = '';
end;

end.
