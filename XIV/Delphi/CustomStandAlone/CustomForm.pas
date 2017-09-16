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
    procedure Image1Click(Sender: TObject);
    procedure IWStandAloneServer1DebugLog(ASender: TObject; ALog: String);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  FormCustom: TFormCustom;

implementation

{$R *.dfm}

uses
  IW.Server.Indy, IWGlobal;

procedure TFormCustom.FormCreate(Sender: TObject);
begin
 IWStandAloneServer1.Start(TSaServerIndy);
  memoLog.Lines.Add('Server started');
  memoLog.Lines.Add('Listening on port: ' + IntToStr(GServerController.Port));
  memoLog.Lines.Add('');
end;

procedure TFormCustom.Image1Click(Sender: TObject);
begin
  IWStandAloneServer1.Run;
end;

procedure TFormCustom.IWStandAloneServer1DebugLog(ASender: TObject;
  ALog: String);
begin
  memoLog.Lines.Add(ALog);
end;

end.
