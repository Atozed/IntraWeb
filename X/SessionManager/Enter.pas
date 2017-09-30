unit Enter;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompButton, IWCompEdit, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, Controls, Forms,
  IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWRegion;

type
  TFormNickname = class(TIWAppForm)
    IWRegion1: TIWRegion;
    IWLabel1: TIWLabel;
    buttonEnter: TIWButton;
    editNickname: TIWEdit;
    procedure editNicknameSubmit(Sender: TObject);
    procedure buttonEnterClick(Sender: TObject);
  private
    procedure EnterApplication;
  public
  end;

implementation

{$R *.dfm}

uses ServerController, Main, IWBaseForm;

procedure TFormNickname.editNicknameSubmit(Sender: TObject);
begin
  EnterApplication;
end;

procedure TFormNickname.buttonEnterClick(Sender: TObject);
begin
  EnterApplication;
end;

procedure TFormNickname.EnterApplication;
begin
  UserSession.Nickname := editNickname.Text;
  TFormMain.Create(WebApplication).Show;
end;

initialization
  TFormNickname.SetAsMainForm;
end.
