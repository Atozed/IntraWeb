unit SecureForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  Controls, IWVCLBaseControl, IWBaseControl, IWControl, IWCompText, jpeg,
  IWHTMLControls, IWBaseHTMLControl, IWCompMemo, IWCompExtCtrls, IWCompButton;

type
  TFormSecure = class(TIWAppForm)
    IWLabel1: TIWLabel;
    imgPadlock: TIWImage;
    linkNext: TIWLink;
    IWMemo1: TIWMemo;
    lblSessionID: TIWLabel;
    IWText1: TIWText;
    procedure linkNextClick(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, Main, NonSecureForm, IWGlobal;


procedure TFormSecure.IWAppFormRender(Sender: TObject);
begin
  imgPadLock.Visible := WebApplication.SecureMode; // Request.ServerPort = GServerController.SSLOptions.Port;
  lblSessionID.Caption := 'Your Session ID is: ' + WebApplication.AppID;
end;

procedure TFormSecure.linkNextClick(Sender: TObject);
begin
  WebApplication.SwitchToNonSecure;
  TFormNonSecure.Create(WebApplication).Show;
  Release;
end;


end.
