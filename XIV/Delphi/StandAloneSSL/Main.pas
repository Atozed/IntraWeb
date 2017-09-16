unit Main;
{PUBDIST}

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  IWCompLabel, Controls, IWBaseControl, IWControl, IWCompText,
  IWVCLBaseControl, jpeg, IWBaseHTMLControl, IWCompMemo, IWCompExtCtrls;

type
  TFormMain = class(TIWAppForm)
    IWLabel2: TIWLabel;
    IWLink1: TIWLink;
    IWLabel3: TIWLabel;
    linkNext: TIWLink;
    imgPadlock: TIWImage;
    IWMemo1: TIWMemo;
    lblSessionID: TIWLabel;
    IWLink2: TIWLink;
    procedure IWLink1Click(Sender: TObject);
    procedure linkNextClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWGlobal, ServerController, SecureForm, IWBaseForm, NonSecureForm;


procedure TFormMain.IWAppFormRender(Sender: TObject);
begin
  lblSessionID.Caption := 'Your Session ID is: ' + WebApplication.AppID;
end;

procedure TFormMain.IWLink1Click(Sender: TObject);
begin
  AddToInitProc('NewWindow("http://www.openssl.org/related/binaries.html", "","");');
end;

procedure TFormMain.IWLink2Click(Sender: TObject);
begin
  TFormNonSecure.Create(WebApplication).Show;
  Release;
end;

procedure TFormMain.linkNextClick(Sender: TObject);
begin
  WebApplication.SwitchToSecure;
  TFormSecure.Create(WebApplication).Show;
  Release;

//  if WebApplication.Request.ServerPort = GServerController.SSLOptions.Port then begin
//    TFormSecure.Create(WebApplication).Show;
//    Release;
//  end else begin
//    WebApplication.TerminateAndRedirect('https://127.0.0.1:' + IntToStr(GServerController.SSLOptions.Port));
//  end;
end;

procedure TFormMain.IWAppFormCreate(Sender: TObject);
begin
  if WebApplication.Request.ServerPort = GServerController.SSLOptions.Port then begin
    linkNext.Caption := 'You are now in SSL mode, click here to go to the next form';
    imgPadLock.Visible := True;
  end;
end;

initialization
  TFormMain.SetAsMainForm

end.
