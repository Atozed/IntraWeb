unit Unit66;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompText;

type
  TIWForm66 = class(TIWAppForm)
    IWAnimatedButton1: TIWAnimatedButton;
    IWAnimatedButton2: TIWAnimatedButton;
    IWAnimatedButton3: TIWAnimatedButton;
    IWAnimatedButton4: TIWAnimatedButton;
    IWAnimatedButton5: TIWAnimatedButton;
    IWText1: TIWText;
    procedure IWAnimatedButton1AsyncClick(Sender: TObject;
      EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm66.IWAnimatedButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  Sleep(4000);
end;

initialization
  TIWForm66.SetAsMainForm;

end.
