unit AuthenticateForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, HTTPApp;

type
  TfrmAuthenticate = class(TIWAppForm)
  public
    class function RequestAuth(aRequest: TWebRequest; var rGroup: string): Boolean; override;
  end;

implementation

uses IWURLMap;

{$R *.dfm}

{ TfrmAuthenticate }

class function TfrmAuthenticate.RequestAuth(aRequest: TWebRequest; var rGroup: string): Boolean;
begin
  Result := True;
end;

initialization

  TIWURLMap.Add('/authenticate/', 'index.html', TfrmAuthenticate);

end.
