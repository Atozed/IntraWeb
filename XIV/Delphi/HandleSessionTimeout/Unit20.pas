unit Unit20;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompMemo;

type
  TIWForm20 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm20.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWMemo1.Lines.Add(DateTimeToStr(Now));
end;

initialization
  TIWForm20.SetAsMainForm;

end.
