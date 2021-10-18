unit uRedForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompButton, IWCompMemo;

type
  TRedForm = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure BackToMain;
  public
  end;

implementation

{$R *.dfm}


procedure TRedForm.BackToMain;
begin
  Release;
  WebApplication.GoToURL('/');
end;

procedure TRedForm.IWButton1Click(Sender: TObject);
begin
  BackToMain;
end;

procedure TRedForm.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  BackToMain;
end;

procedure TRedForm.IWButton2Click(Sender: TObject);
begin
  IWMemo1.Lines.Add('Button click (sync)');
end;

procedure TRedForm.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWMemo1.Lines.Add('Button click (Async)');
end;

end.
