unit Unit9;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Vcl.Imaging.jpeg, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompExtCtrls, IWCompText, IWCompLabel;

type
  TIWForm9 = class(TIWAppForm)
    IWImage1: TIWImage;
    IWText1: TIWText;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm9.IWAppFormCreate(Sender: TObject);
begin
  ConnectionMode := cmSecure;  // only HTTPS is allowed here
end;

initialization
  TIWForm9.SetAsMainForm;

end.
