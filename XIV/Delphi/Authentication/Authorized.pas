unit Authorized;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IW.Content.Handlers, IW.Content.Form, IWCompGradButton,
  IWCompMemo, Main;

type
  TIWForm1 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWGradButton1: TIWGradButton;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWGradButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  IWLabel1.Caption := 'Authenticated user: ' + WebApplication.AuthUser;
end;

procedure TIWForm1.IWGradButton1Click(Sender: TObject);
begin
  TIWForm2.Create(WebApplication).Show;
  Release;
end;

initialization
  THandlers.Add('/auth/', 'index.html', TContentForm.Create(TIWForm1));

end.
