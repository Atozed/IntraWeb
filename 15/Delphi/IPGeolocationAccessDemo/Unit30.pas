unit Unit30;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompMemo;

type
  TIWForm30 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm30.IWAppFormCreate(Sender: TObject);
begin
  IWMemo1.Lines.Text := 'If you see this form at runtime, then you''re using a local network address or your access has been granted based on the Geolocation obtained using your IP';
end;

initialization
  TIWForm30.SetAsMainForm;

end.
