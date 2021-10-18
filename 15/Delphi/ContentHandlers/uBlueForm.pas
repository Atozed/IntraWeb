unit uBlueForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompButton, IWCompEdit;

type
  TBlueForm = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure BackToMain;
  public
  end;

implementation

{$R *.dfm}


procedure TBlueForm.BackToMain;
begin
  Release;
  WebApplication.GoToURL('/');
end;

procedure TBlueForm.IWButton1Click(Sender: TObject);
begin
  BackToMain;
end;

procedure TBlueForm.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  BackToMain;
end;

end.
