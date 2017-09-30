unit NoAuthenticateForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, HTTPApp;

type
  TfrmNoAuthenticate = class(TIWAppForm)
  public
    class function RequestAuth(aRequest: TWebRequest; var rGroup: string): Boolean; override;
  end;

implementation

uses IWURLMap;

{$R *.dfm}


{ TfrmNoAuthenticate }

class function TfrmNoAuthenticate.RequestAuth(aRequest: TWebRequest; var rGroup: string): Boolean;
begin
  Result := False;
end;

initialization
  TfrmNoAuthenticate.SetAsMainForm;

  TIWURLMap.Add('/noauthenticate/', 'index.html', TfrmNoAuthenticate);

end.
