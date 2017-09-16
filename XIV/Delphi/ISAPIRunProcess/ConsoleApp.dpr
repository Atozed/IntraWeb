program ConsoleApp;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classes;

var
  s: TStringList;
  aFileName: string;
  aText: string;
begin
  aFileName := ParamStr(1);
  aText := ParamStr(2);
  if aFileName <> '' then begin
    try
      s := TStringList.Create;
      try
        s.Add('This is some text. We will also add some text received via command line parameters:');
        s.Add('This was received from command line: ' + aText);
        s.SaveToFile(aFileName);
      finally
        s.Free;
      end;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
  end;
end.
