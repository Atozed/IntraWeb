unit uContentResource;
{$I IWCompilerDefines.inc}

interface

uses
  Classes, IW.Content.Base, IWApplication, IW.HTTP.Request, IW.HTTP.Reply;

type
  TContentResource = class(TContentBase)
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string;
                    aSession: TIWApplication; aParams: TStrings): Boolean; override;
  public
    constructor Create; override;
  end;

implementation

uses
  System.SysUtils, IW.Common.FileStream, ServerController;

constructor TContentResource.Create;
begin
  inherited;
  mFileMustExist := False;
end;

function TContentResource.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string;
  aSession: TIWApplication; aParams: TStrings): Boolean;
var
  aResourceName,
  aFileName,
  aHtmlContent: string;
begin
  Result := True;
  if Assigned(aReply) then begin
     aResourceName := aRequest.GetQueryFieldValue('res');
     aFileName := IncludeTrailingPathDelimiter(IWServerController.ContentPath) + aResourceName;
     if FileExists(aFileName) then begin
       aHtmlContent := TIWTextFileReader.ReadAllText(aFileName);
       aReply.WriteString(aHtmlContent);
     end else begin
       aReply.WriteString('Resource not found');
     end;
  end;
end;

end.

