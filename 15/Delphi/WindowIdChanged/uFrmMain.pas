unit uFrmMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompButton;

type
  TfrmMain = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  uFrmSecond;

procedure TfrmMain.IWButton1Click(Sender: TObject);
begin
  WebApplication.ShowForm(TfrmSecond);
  Release;
end;

initialization
  TfrmMain.SetAsMainForm;

end.
