unit Global;

interface

// Procs
  function FromCurrency(const AText: string): Currency;

implementation

uses
  SysUtils;

function FromCurrency(const AText: string): Currency;
var
  i: Integer;
  s: string;
begin
  s := AText;
  for i := Length(s) downto 1 do begin
    if Pos(s[i], '0123456789.,') = 0 then begin
      Delete(s, i, 1);
    end;
  end;
  if not TextToFloat(PChar(s), Result, fvCurrency) then begin
    Result := 0;
  end;
  if ((Pos('-', AText) > 0) or (Pos('(', AText) > 0)) then begin
    Result := -Result;
  end;
end;

end.
