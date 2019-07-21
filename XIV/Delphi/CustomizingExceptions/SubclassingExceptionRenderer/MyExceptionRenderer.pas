unit MyExceptionRenderer;

interface

uses
  SysUtils, Classes, IW.Http.Request, IWExceptionRenderer;  // all these units are required here

type
  TMyIWExceptionRenderer = class(TIWExceptionRenderer)
  public
    class var Redirect: Boolean;
  public
    class function RenderHTML(AException: Exception; ARequest: THttpRequest): string; override;
  end;

implementation

uses
  IWException, // required to use EInvalidSession
  IWUtils;     // required to use HtmlRedirect function

{ TMyIWExceptionRenderer }

class function TMyIWExceptionRenderer.RenderHTML(AException: Exception;
  ARequest: THttpRequest): string;
begin
  // here we just return some VALID HTML as a string
  // This HTML will be presented to the user as is.
  if AException is EInvalidSession then begin           // this HTML will be sent back to browser when a Timeout occurs
    if Redirect then begin
      Result := HtmlRedirect('http://www.atozed.com');  // redirect to another domain/site
    end else begin
      Result := '<!DOCTYPE html>' +                     // otherwise use a custom page
                '<html lang="en">' +
                '<head>' +
                '<meta charset="UTF-8">' +
                '<title>Application timeout</title>' +
                '<style type="text/css" media="all">' +
                '#error {' +
                'width: 40%;' +
                'max-width: 400px;' +
                'min-width: 200px;' +
                'height: 20%;' +
                'min-height: 170px;' +
                'max-height: 400px;' +
                'margin: 8% auto;' +
                'border: 6px solid #006600;' +
                'padding: 20px;' +
                'font-family: Arial, Helvetica, sans-serif;' +
                'color: black;' +
                'background-color: #fefefe;' +
                '}' +
                '</style>' +
                '</head>' +
                '<body>' +
                '<div id="error">'+
                '<h1>Timeout error</h1>' +
                '<p>A timeout occurred! Please restart the application.</p>' +
                '</div>' +
                '</body>' +
                '</html>';
    end;
  end else begin                                // all other unexpected errors will receive this error page
    Result := '<!DOCTYPE html>' +
              '<html lang="en">' +
              '<head>' +
              '<meta charset="UTF-8">' +
              '<title>Application Error</title>' +
              '<style type="text/css" media="all">' +
              '#error {' +
              'width: 40%;' +
              'max-width: 400px;' +
              'min-width: 200px;' +
              'height: 20%;' +
              'min-height: 170px;' +
              'max-height: 400px;' +
              'margin: 8% auto;' +
              'border: 6px solid #FF0000;' +
              'padding: 20px;' +
              'font-family: Arial, Helvetica, sans-serif;' +
              'color: #AC292E;' +
              'background-color: #fefefe;' +
              '}' +
              '</style>' +
              '</head>' +
              '<body>' +
              '<div id="error">'+
              '<h1>Application Error</h1>' +
              '<p></p>' +
              '</div>' +
              '</body>' +
              '</html>';
  end;
end;

initialization
  // install TMyIWExceptionRenderer as the default IWExceptionRenderer
  SetExceptionRendererClass(TMyIWExceptionRenderer);
  // if True, all session timeout errors will be redirected to an external site (in this demo, www.atozed.com)
  TMyIWExceptionRenderer.Redirect := False;

end.
