unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel, IWHTMLControls,
  IWCompButton, IWCompListbox, Vcl.Imaging.jpeg, IWCompExtCtrls, Vcl.Graphics,
  Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion;

type
  TIWForm3 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}
uses
 IWGlobal, IdGlobalProtocols;


procedure TIWForm3.IWAppFormCreate(Sender: TObject);
begin
  if WebApplication.SecureMode then begin
    IWLabel1.Caption := 'this form is using secure mode';
  end else begin
    IWLabel1.Caption := 'this form is NOT using secure mode';
  end;
end;

initialization
  TIWForm3.SetAsMainForm;

end.
