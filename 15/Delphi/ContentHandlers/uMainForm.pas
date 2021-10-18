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
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TMainForm.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GotoURL('mydoc.html');
end;

procedure TMainForm.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GotoURL('/blueform/');
end;

procedure TMainForm.IWButton2Click(Sender: TObject);
begin
  WebApplication.GotoURL('/redform');
end;

initialization
  TMainForm.SetAsMainForm;

end.
