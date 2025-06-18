unit uContentHtml;

interface

uses
  Classes, IW.Content.Base, IWApplication, IW.HTTP.Request, IW.HTTP.Reply;

type
  TContentHtml = class(TContentBase)
  protected
    FFileName: string;
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string;
                    aSession: TIWApplication; aParams: TStrings): Boolean; override;
  public
    constructor Create(const AFileName: string); reintroduce; overload;
  end;

implementation

uses
  System.SysUtils, IW.Common.FileStream, ServerController, IWMimeTypes,
  // Change this to IWURL if IW.Common.URL breaks the compiler
  IW.Common.URL;

constructor TContentHtml.Create(const AFileName: string);
begin
  inherited Create;
  FFileName := AFileName;
  mFileMustExist := False;
end;

function TContentHtml.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string;
  aSession: TIWApplication; aParams: TStrings): Boolean;
var
  aFileName,
  aHtmlContent: string;
begin
  Result := True;
  if Assigned(aReply) then begin
     // TURL.UrlPathToFilePath() is used to prevent that a file outside wwwroot folder (SC.ContentPath) is served
     aFileName := TURL.UrlPathToFilePath(IWServerController.ContentPath, FFileName);
     if FileExists(aFileName) then begin
       aHtmlContent := TIWTextFileReader.ReadAllText(aFileName);
       aReply.ContentType := MIME_HTML;
       aReply.WriteString(aHtmlContent);
     end else begin
       Send404(aReply);
     end;
  end;
end;

end.

