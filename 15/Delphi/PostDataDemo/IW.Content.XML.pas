unit IW.Content.XML;

interface

uses
  Classes, IWApplication, IW.Content.Base, HTTPApp, IW.HTTP.Request,
  IW.HTTP.Reply, System.SysUtils, EncdDecd, System.IOUtils,
  IWAppCache;

type
  TContentXML = class(TContentBase)
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication; aParams: TStrings): boolean; override;
  public
    constructor Create; override;
  private
  end;

implementation

uses
  IW.Content.Handlers, IWMimeTypes, ServerController, IW.HTTP.FileItem,
  Contnrs, IW.Common.FileStream;

constructor TContentXML.Create;
begin
  inherited;
  mFileMustExist := False;
end;

function TContentXML.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
  aParams: TStrings): boolean;
var
  xFile: THttpFile;
  xml: string;
begin
  Result := False;
  if aRequest.Files.Count = 1 then begin
    xFile := THttpFile(aRequest.Files[0]);
    xml := TIWTextFileReader.ReadAllText(xFile.TempPathName);
    aReply.WriteString(ClassName + '.Execute - Content received: ' + xml);
    Result := True;
  end;
end;

initialization

end.
