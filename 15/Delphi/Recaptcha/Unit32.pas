unit Unit32;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompReCaptcha,
  IWCompMemo;

type
  TIWForm32 = class(TIWAppForm)
    IWReCaptcha1: TIWReCaptcha;
    IWMemo1: TIWMemo;
    procedure IWReCaptcha1ValidationError(Sender: TObject;
      const AResponse: string);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWReCaptcha1Success(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm32.IWAppFormCreate(Sender: TObject);
begin
  IWReCaptcha1.SiteKey := 'Your site key here';
  IWReCaptcha1.SecretKey := 'Your secret key here';
end;

procedure TIWForm32.IWReCaptcha1Success(Sender: TObject);
begin
  WebApplication.ShowMessage('ReCaptcha validation succeed!');
end;

procedure TIWForm32.IWReCaptcha1ValidationError(Sender: TObject;
  const AResponse: string);
begin
  WebApplication.ShowMessage('ReCaptcha validation failed!');
end;

initialization
  TIWForm32.SetAsMainForm;

end.
