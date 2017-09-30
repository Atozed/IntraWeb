unit step1;

interface

uses
  Classes, SysUtils, IWApplication, IWTypes, IWPageForm32, IWInit, IWLicenseKey,
  IWCompLabel32, Controls, IWVCLBaseControl, IWBaseControl, IWControl32,
  IWCompButton32, IWHTMLControls32;

type
  TFormStep1 = class(TIWPageForm32)
    IWButton321: TIWButton32;
    IWLabel321: TIWLabel32;
    IWURL321: TIWURL32;
    procedure IWButton321Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TFormStep1.IWButton321Click(Sender: TObject);
begin
  IWLabel321.Caption := FormatDateTime('ddd, dd of mmm of yyyy, hh:nn:ss', Now);
  IWLabel321.Visible := true;
end;

initialization
  TFormStep1.RegisterPage;

end.
