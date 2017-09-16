unit IW.ContentBot2;

interface

uses
  SysUtils, Classes, IW.Content.Base, HTTPApp, IWApplication, IW.HTTP.Request, IW.HTTP.Reply;

type
  TContentBot2 = class(TContentBase)
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
        aParams: TStrings): boolean; override;
  public
    constructor Create; override;
  end;

implementation

uses
  IW.Content.Handlers, IWMimeTypes, IWServerInternalFiles, ServerController, IWGlobal;

constructor TContentBot2.Create;
begin
  inherited Create;
  mFileMustExist := False;
end;

// this content handler loads a static html page from wwwroot (content path) and writes it to the reply
function TContentBot2.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
 aParams: TStrings): boolean;
var
  sl: TStringStream;
begin
  Result := True;
  if Assigned(aReply) then begin
    sl := TStringStream.Create;
    try
      sl.LoadFromFile(gSC.ContentPath + 'bot2.html');
      aReply.ContentType := MIME_HTML;
      aReply.WriteString(sl.DataString);
    finally
      sl.Free;
    end;
  end;
end;

end.

