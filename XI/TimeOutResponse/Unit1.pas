unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses ServerController;

{$R *.dfm}


procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  IWButton1.Caption := TimeToStr(Time);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
