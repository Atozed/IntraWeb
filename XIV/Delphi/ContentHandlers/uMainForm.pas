unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IW.Content.Handlers,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompFileUploader, IWCompMemo;

type
  TMainForm = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TMainForm.IWButton1Click(Sender: TObject);
begin
  WebApplication.GotoURL('mydoc.html');
end;

procedure TMainForm.IWButton2Click(Sender: TObject);
begin
  WebApplication.GotoURL('redform.html');
end;

procedure TMainForm.IWButton3Click(Sender: TObject);
begin
  WebApplication.GotoURL('blueform.html');
end;

initialization
  TMainForm.SetAsMainForm;

end.
