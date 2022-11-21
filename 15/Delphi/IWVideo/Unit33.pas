unit Unit33;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompVideo,
  IWCompAudio, IWCompButton, IWCompMemo;

type
  TIWForm33 = class(TIWAppForm)
    IWVideo1: TIWVideo;
    IWMemo1: TIWMemo;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWVideo1AsyncEnded(Sender: TObject; EventParams: TStringList);
    procedure IWVideo1AsyncError(Sender: TObject; EventParams: TStringList);
    procedure IWVideo1AsyncPause(Sender: TObject; EventParams: TStringList);
    procedure IWVideo1AsyncPlay(Sender: TObject; EventParams: TStringList);
    procedure IWVideo1AsyncWaiting(Sender: TObject; EventParams: TStringList);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  private
    procedure Log(const s: string);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm33.Log(const s: string);
begin
  IWMemo1.Lines.Add(s);
end;

procedure TIWForm33.IWVideo1AsyncEnded(Sender: TObject;
  EventParams: TStringList);
begin
  Log('Video ended');
end;

procedure TIWForm33.IWVideo1AsyncError(Sender: TObject;
  EventParams: TStringList);
begin
  Log('Video error occurred');     // ideally this will never happen
end;

procedure TIWForm33.IWVideo1AsyncPause(Sender: TObject;
  EventParams: TStringList);
begin
  Log('Video paused');
end;

procedure TIWForm33.IWVideo1AsyncPlay(Sender: TObject;
  EventParams: TStringList);
begin
  Log('Video now playing');
end;

procedure TIWForm33.IWVideo1AsyncWaiting(Sender: TObject;
  EventParams: TStringList);
begin
  Log('Video waiting');
end;

procedure TIWForm33.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWVideo1.Play;
end;

procedure TIWForm33.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWVideo1.Pause;
end;

initialization
  TIWForm33.SetAsMainForm;

end.
