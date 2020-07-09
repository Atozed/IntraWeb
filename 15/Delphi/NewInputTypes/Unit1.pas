unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompEdit,
  IWCompLabel, IWCompButton, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWCompCheckbox, IWCompListbox;

type
  TIWForm1 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    IWEdit2: TIWEdit;
    IWLabel2: TIWLabel;
    IWEdit3: TIWEdit;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWEdit4: TIWEdit;
    IWLabel6: TIWLabel;
    IWLabel7: TIWLabel;
    IWLabel8: TIWLabel;
    IWEdit5: TIWEdit;
    IWLabel9: TIWLabel;
    IWLabel10: TIWLabel;
    IWLabel11: TIWLabel;
    IWLabel12: TIWLabel;
    IWEdit6: TIWEdit;
    IWLabel13: TIWLabel;
    IWLabel14: TIWLabel;
    IWEdit7: TIWEdit;
    IWLabel15: TIWLabel;
    IWLabel16: TIWLabel;
    IWLabel17: TIWLabel;
    IWEdit8: TIWEdit;
    IWLabel18: TIWLabel;
    IWLabel19: TIWLabel;
    IWLabel20: TIWLabel;
    IWLabel21: TIWLabel;
    IWLabel22: TIWLabel;
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  LButton: TIWLabel;
begin
  LButton := TIWLabel.Create(Self);
  LButton.Parent := Self;
  LButton.Name := 'IWLABEL_NEW';
end;

initialization
  TIWForm1.SetAsMainForm;

end.
