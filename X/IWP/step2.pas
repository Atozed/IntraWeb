unit step2;

interface

uses
  Classes, SysUtils, IWApplication, IWTypes, IWPageForm32, IWInit, IWLicenseKey,
  IWCompListbox32, IWCompButton32, Controls, IWVCLBaseControl, IWBaseControl,
  IWControl32, IWCompEdit32, IWCompLabel32;

type
  TFormStep2 = class(TIWPageForm32)
    IWEdit321: TIWEdit32;
    IWButton321: TIWButton32;
    IWLabel321: TIWLabel32;
    procedure IWButton321Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TFormStep2.IWButton321Click(Sender: TObject);
begin
  IWLAbel321.Caption := 'You have entered the text: ' + IWEdit321.Text;
  IWLabel321.Visible := True;
end;

initialization
  TFormStep2.RegisterPage;

  
end.
