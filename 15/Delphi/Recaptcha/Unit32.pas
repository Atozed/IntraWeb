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
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm32.IWReCaptcha1ValidationError(Sender: TObject;
  const AResponse: string);
begin
  Self.AsyncReload;
end;

procedure TIWForm32.IWAppFormCreate(Sender: TObject);
begin
  IWReCaptcha1.SiteKey := 'your site key here';
  IWReCaptcha1.SecretKey := 'your secret key here';
end;

initialization
  TIWForm32.SetAsMainForm;

end.
