unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  IWCompLabel, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompMemo, IWHTMLControls, Vcl.Menus, IWTMSPopup, IWDiscord;

type
  TIWForm1 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLink1: TIWLink;
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  IWTelegram;

const
  BOT_TOKEN = '1633190066:AAEfdo6vQzB7KjYjJYyMJU1hA8V3OUANhW4';
  CHAT_ID = '@IWTelegramComponent';
  PIXPDV_Erros = '1071116067608461332/I_Zyg_9PI6YEfWMYRRHrxdlXXDBf_QJJz5q3_ZxrD3LX-p1-clxUFm4ugN4553Pjp2EU';

procedure TIWForm1.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  TIWDiscordHelper.SendMessageAsync(PIXPDV_Erros, IWMemo1.Lines.Text, 'Gilmar Mendes');
  //TIWTelegramHelper.SendMessageAsync(BOT_TOKEN, CHAT_ID, IWMemo1.Lines.Text);
  IWMemo1.Lines.Clear;
  WebApplication.ShowMessage('Your message has been sent!');
end;

procedure TIWForm1.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  TIWTelegramHelper.SendMessage(BOT_TOKEN, CHAT_ID, IWMemo1.Lines.Text);
  IWMemo1.Lines.Clear;
  WebApplication.ShowMessage('Your message has been sent!');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
