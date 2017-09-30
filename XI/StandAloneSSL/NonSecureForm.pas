unit NonSecureForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompText,
  Controls, IWVCLBaseControl, IWBaseControl, IWControl, IWCompLabel,
  IWHTMLControls, IWBaseHTMLControl;

type
  TFormNonSecure = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWText1: TIWText;
    linkNext: TIWLink;
    procedure linkNextClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, SecureForm;

procedure TFormNonSecure.linkNextClick(Sender: TObject);
begin
  WebApplication.SwitchToSecure;
  TFormSecure.Create(WEBApplication).Show;
  Release;

end;

end.
