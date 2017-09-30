unit CustomForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, IWStandAloneServer;

type
  TFormCustom = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    IWStandAloneServer1: TIWStandAloneServer;
    memoLog: TMemo;
    Button1: TButton;
    Edit1: TEdit;
    Label2: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure IWStandAloneServer1DebugLog(ASender: TObject; ALog: String);
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  FormCustom: TFormCustom;

implementation
{$R *.dfm}

uses
  IWHTTPServer, IWGlobal;

procedure TFormCustom.Image1Click(Sender: TObject);
begin
  IWStandAloneServer1.Run;
end;

procedure TFormCustom.FormCreate(Sender: TObject);
begin
  memoLog.Lines.Add('Server started');
  memoLog.Lines.Add('Listening on port: ' + IntToStr(GServerController.Port));
  memoLog.Lines.Add('');
end;

procedure TFormCustom.IWStandAloneServer1DebugLog(ASender: TObject;
  ALog: String);
begin
  memoLog.Lines.Add(ALog);
end;

procedure TFormCustom.Button1Click(Sender: TObject);
begin
  GServerController.Port := StrToInt(Edit1.Text);
  IWStandaloneServer1.ClearSessions;
  GHTTPServer.ForcePortRefresh;
  memoLog.Lines.Add('Port changed to: ' + Edit1.Text);
end;

end.
