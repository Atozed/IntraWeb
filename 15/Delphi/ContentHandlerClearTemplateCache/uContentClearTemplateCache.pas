unit uContentClearTemplateCache;

interface

uses
  Classes, IW.Content.Base, HTTPApp, IWApplication, IW.HTTP.Request, IW.HTTP.Reply;

type
  TContentCleatTemplateCache = class(TContentBase)
  protected
    function Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
        aParams: TStrings): boolean; override;
  public
    constructor Create; override;
  end;

implementation

uses
  IW.Content.Handlers, IWTemplateProcessorHTML;

constructor TContentCleatTemplateCache.Create;
begin
  inherited;
  mFileMustExist := False;
  mRequiresSession := False;
end;

function TContentCleatTemplateCache.Execute(aRequest: THttpRequest; aReply: THttpReply; const aPathname: string; aSession: TIWApplication;
 aParams: TStrings): boolean;
begin
  Result := True;
  TIWTemplateCache.Instance.ClearCache;
  if Assigned(aReply) then begin
    aReply.Code := 200;
  end;
end;

end.
