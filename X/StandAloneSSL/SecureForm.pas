unit SecureForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWCompLabel,
  Controls, IWVCLBaseControl, IWBaseControl, IWControl, IWCompText, jpeg,
  IWExtCtrls, IWHTMLControls, IWBaseHTMLControl;

type
  TIWForm2 = class(TIWAppForm)
    IWText1: TIWText;
    IWLabel1: TIWLabel;
    imgPadlock: TIWImage;
    linkNext: TIWLink;
    procedure linkNextClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, Main, NonSecureForm;


procedure TIWForm2.linkNextClick(Sender: TObject);
begin
  WebApplication.SwitchToNonSecure;
  TIWForm3.Create(WEBApplication).Show;
  Release;
end;


end.
