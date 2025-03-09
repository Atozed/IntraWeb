unit CustomExceptionRenderer;

interface

uses
  SysUtils, Classes, IW.Http.Request, IWExceptionRenderer;

type
  TCustomExceptionRenderer = class(TIWExceptionRenderer)
  public
    class function RenderHTML(AException: Exception; ARequest: THttpRequest): string; override;
  end;

implementation

uses
  ServerController, UserSessionUnit;

{ TCustomExceptionRenderer }

class function TCustomExceptionRenderer.RenderHTML(AException: Exception;
  ARequest: THttpRequest): string;
var
  UserUrlParams: string;
begin
  if UserSession <> nil then begin
    UserUrlParams := UserSession.UserUrlParams;
  end else begin
    UserUrlParams := '';
  end;

  Result := inherited RenderHTML(AException, ARequest);
  Result := StringReplace(Result, '{%URLPARAMS%}', UserUrlParams, [rfReplaceAll, rfIgnoreCase]);
end;

initialization
  SetExceptionRendererClass(TCustomExceptionRenderer);

end.
