unit IW.Content.XML;

interface

uses
  Classes, IW.Content.Base, HTTPApp, IWApplication, IW.HTTP.Request, IW.HTTP.Reply;

type
  TContentXML = class(TContentBase)
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
        aParams: TStrings): boolean; override;
  public
    constructor Create; override;
  end;

implementation

uses
  IW.Content.Handlers, IWMimeTypes;

constructor TContentXML.Create;
begin
  inherited;
  mFileMustExist := False;
  //mRequiresSession := False;
end;

function TContentXML.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
 aParams: TStrings): boolean;
begin
  Result := True;
  if Assigned(aReply) then begin
    aReply.ContentType := MIME_XML;
    aReply.WriteString('<xml>My xml content here</xml>');
  end;
  aSession.Terminate;
end;

initialization

end.
