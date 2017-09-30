unit MainForm;

interface

uses
  Classes, SysUtils, IWApplication, IWTypes, IWPageForm, IWLicenseKey,
  IWCompButton, Controls, IWBaseControl, IWControl, IWCompLabel,
  IWHTMLControls, IWInit, IWVCLBaseControl, IWBaseHTMLControl;

type
  TformMain = class(TIWPageForm)
    IWLabel1: TIWLabel;
    IWURL1: TIWURL;
    procedure IWPageFormCreate(Sender: TObject);
  public
  end;

implementation

uses IWBaseForm;
{$R *.dfm}

procedure TformMain.IWPageFormCreate(Sender: TObject);
begin
  IWURL1.URL := WebApplication.AppURLBase + '/second';
end;

end.
