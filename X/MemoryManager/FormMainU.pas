unit FormMainU;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompText,
  IWCompButton;

type
  TFormMain = class(TIWAppForm)
    IWText1: TIWText;
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses FormMMStatusU;

{$R *.dfm}

//See the dpr file for the RecyclerMM unit.

procedure TFormMain.IWButton1Click(Sender: TObject);
begin
  TFormMMStatus.Create(WebApplication).Show;
end;

initialization
  TFormMain.SetAsMainForm;

end.

