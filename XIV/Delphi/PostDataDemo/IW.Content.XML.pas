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
  Contnrs;

constructor TContentXML.Create;
begin
  inherited;
  mFileMustExist := False;
end;

function TContentXML.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
  aParams: TStrings): boolean;
var
  xFile: THttpFile;
  fs: TFileStream;
  xml: TStringStream;
begin
  Result := False;
  if aRequest.Files.Count = 1 then begin
    xFile := THttpFile(aRequest.Files[0]);
    fs := TFileStream.Create(xFile.TempPathName, fmOpenRead or fmShareDenyNone);
    xml := TStringStream.Create;
    try
      xml.CopyFrom(fs, 0);
      aReply.WriteString(ClassName + '.Execute - Content received: ' + xml.DataString);
      Result := True;
    finally
      xml.Free;
      fs.Free;
    end;
  end;
end;

initialization

end.
