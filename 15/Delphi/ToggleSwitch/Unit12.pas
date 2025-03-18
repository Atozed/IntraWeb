unit Unit12;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompCheckbox,
  IWCompButton, Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWCompListbox, IWCompMemo, IWCompSummernote;

type
  TIWForm12 = class(TIWAppForm)
    IWCheckBox1: TIWCheckBox;
    procedure IWCheckBox1GetImageFileName(ASender: TObject; AChecked: Boolean; var
        aFileName: string);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm12.IWCheckBox1GetImageFileName(ASender: TObject; AChecked:
    Boolean; var aFileName: string);
begin
  if AChecked then
    aFileName := 'on.png'
  else
    aFileName := 'off.png';
end;

initialization
  TIWForm12.SetAsMainForm;

end.
