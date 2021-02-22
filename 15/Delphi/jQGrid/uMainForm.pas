unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompEdit;

type
  TMainForm = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  uGridForm, uDBGridForm;

procedure TMainForm.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowForm(TDBGridForm);
end;

procedure TMainForm.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowForm(TGridForm);
end;

initialization
  TMainForm.SetAsMainForm;

end.
