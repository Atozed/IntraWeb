unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit, IWCompLabel;

type
  TIWForm1 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
    IWEdit2: TIWEdit;
    IWButton2: TIWButton;
    IWLabel1: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses IWGlobal; // gCS

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  gSC.ExceptionDisplayMode := smSameWindow;
  WebApplication.ShowMessage(IWEdit1.Text + ' + ' + IWEdit2.Text + ' = ' +
    IntToStr(StrToInt(IWEdit1.Text) + StrToInt(IWEdit2.Text)), smSameWindow);
end;

procedure TIWForm1.IWButton2Click(Sender: TObject);
begin
  gSC.ExceptionDisplayMode := smSameWindow;
  raise Exception.Create('This is an error message');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
