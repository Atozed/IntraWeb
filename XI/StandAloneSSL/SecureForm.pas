unit SecureForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  Controls, IWVCLBaseControl, IWBaseControl, IWControl, IWCompText, jpeg,
  IWExtCtrls, IWHTMLControls, IWBaseHTMLControl, IWCompMemo;

type
  TFormSecure = class(TIWAppForm)
    IWLabel1: TIWLabel;
    imgPadlock: TIWImage;
    linkNext: TIWLink;
    IWMemo1: TIWMemo;
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
    imgPadLock.Visible := WebApplication.Request.ServerPort = GServerController.SSLOptions.Port;
end;

procedure TFormSecure.linkNextClick(Sender: TObject);
begin
  WebApplication.SwitchToNonSecure;
  TFormNonSecure.Create(WEBApplication).Show;
  Release;
end;


end.
