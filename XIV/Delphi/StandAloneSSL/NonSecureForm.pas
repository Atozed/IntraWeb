unit NonSecureForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompText,
  Controls, IWVCLBaseControl, IWBaseControl, IWControl, IWCompLabel,
  IWHTMLControls, IWBaseHTMLControl, Main;

type
  TFormNonSecure = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWText1: TIWText;
    linkNext: TIWLink;
    lblSessionID: TIWLabel;
    IWLink1: TIWLink;
    procedure linkNextClick(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, SecureForm;

procedure TFormNonSecure.IWAppFormRender(Sender: TObject);
begin
  lblSessionID.Caption := 'Your Session ID is: ' + WebApplication.AppID;
end;

procedure TFormNonSecure.IWLink1Click(Sender: TObject);
begin
  TFormMain.Create(WEBApplication).Show;
  Release;
end;

procedure TFormNonSecure.linkNextClick(Sender: TObject);
begin
  WebApplication.SwitchToSecure;
  TFormSecure.Create(WEBApplication).Show;
  Release;
end;

end.
