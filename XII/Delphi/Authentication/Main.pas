unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TIWForm2 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWAppFormCreate(Sender: TObject);
begin
  IWLabel1.Caption := WebApplication.AuthUser;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
