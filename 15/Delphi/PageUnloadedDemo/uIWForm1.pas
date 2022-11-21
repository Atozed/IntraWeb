unit uIWForm1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompText;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWText1: TIWText;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  uIWForm2;

procedure TIWForm1.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // This will create and show TIWForm2 and also release this IWForm1 instance.
  // It means that the only active form in this session will be IWForm2
  WebApplication.ShowForm(TIWForm2, True);
end;

initialization
  TIWForm1.SetAsMainForm;

end.
