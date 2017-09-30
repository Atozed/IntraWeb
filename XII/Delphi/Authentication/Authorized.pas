unit Authorized;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWURLMap;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  IWLabel1.Caption := WebApplication.AuthUser;
end;

initialization
  TIWURLMap.Add('/auth/', 'index.html', TIWForm1);

end.                                                                                                     ``
