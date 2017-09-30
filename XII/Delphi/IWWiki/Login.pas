unit Login;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, HTTPApp,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls,
  IW.HttpRequest;

type
  TfrmLogin = class(TIWAppForm)
    IWTimer1: TIWTimer;
    procedure IWTimer1Timer(Sender: TObject);
  public
    class function RequestAuth(aRequest: THttpRequest; var rGroup: string): Boolean; override;
  end;

implementation

uses IWURLMap, IWGlobal;

{$R *.dfm}

procedure TfrmLogin.IWTimer1Timer(Sender: TObject);
begin
  WebApplication.GoToURL('/index.html');
end;

class function TfrmLogin.RequestAuth(aRequest: THttpRequest; var rGroup: string): Boolean;
begin
  Result := gSC.AuthActive;
end;


initialization
  TIWURLMap.Add('/login/', '', TfrmLogin);

end.
