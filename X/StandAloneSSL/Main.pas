unit Main;
{PUBDIST}

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  IWCompLabel, Controls, IWBaseControl, IWControl, IWCompText,
  IWVCLBaseControl, jpeg, IWExtCtrls, IWBaseHTMLControl;

type
  TIWForm1 = class(TIWAppForm)
    IWText1: TIWText;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLink1: TIWLink;
    IWLabel3: TIWLabel;
    linkNext: TIWLink;
    imgPadlock: TIWImage;
    procedure IWLink1Click(Sender: TObject);
    procedure linkNextClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWGlobal, ServerController, SecureForm, IWBaseForm;


procedure TIWForm1.IWLink1Click(Sender: TObject);
begin
  AddToInitProc('NewWindow("http://www.intelicom.si", "","");');
end;

procedure TIWForm1.linkNextClick(Sender: TObject);
begin
  if WebApplication.Request.ServerPort = GServerController.SSLOptions.Port then begin
    TIWForm2.Create(WebApplication).Show;
    Release;
  end else begin
    WebApplication.TerminateAndRedirect('https://127.0.0.1');
  end;
end;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  if WebApplication.Request.ServerPort = GServerController.SSLOptions.Port then begin
    linkNext.Caption := 'You are now in SSL mode, click here to go to the next form';
    imgPadLock.Visible := True;
  end;
end;

initialization
  TIWForm1.SetAsMainForm

end.
