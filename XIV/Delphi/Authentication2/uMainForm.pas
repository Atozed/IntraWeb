unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Menus,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompMenu, IWCompMemo, IWCompLabel;

type
  TIWMainForm = class(TIWAppForm)
    IWMenu1: TIWMenu;
    MainMenu1: TMainMenu;
    Main1: TMenuItem;
    Form11: TMenuItem;
    Form21: TMenuItem;
    Form31: TMenuItem;
    IWLabel1: TIWLabel;
    IWMemo1: TIWMemo;
    procedure Form11Click(Sender: TObject);
    procedure Form21Click(Sender: TObject);
    procedure Form31Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  uForm1, uForm2, uForm3;

procedure TIWMainForm.Form11Click(Sender: TObject);
begin
  TIWForm1.Create(WebApplication).Show;
end;

procedure TIWMainForm.Form21Click(Sender: TObject);
begin
  TIWForm2.Create(WebApplication).Show;
end;

procedure TIWMainForm.Form31Click(Sender: TObject);
begin
  TIWForm3.Create(WebApplication).Show;
end;

initialization
  TIWMainForm.SetAsMainForm;

end.
