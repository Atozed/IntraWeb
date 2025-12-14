unit uMainFormServer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, IWMailslot, Vcl.StdCtrls;

type
  TForm26 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FMailSlotServer: TIWMailslotServer;
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

uses
  IWImageUtils;

{$R *.dfm}


procedure TForm26.FormCreate(Sender: TObject);
begin
  FMailSlotServer := TIWMailSlotServer.Create('MyServer');
  FMailSlotServer.MaxMessageSize := 10 * 1024 * 1024;  // 10 Mb
  FMailSlotServer.Open;

  Timer1.Enabled := True;

  Label1.Caption := 'IPC Server active';
end;

procedure TForm26.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := False;
  FreeAndNil(FMailSlotServer);
end;

procedure TForm26.Timer1Timer(Sender: TObject);
var
  s: string;
  len: Integer;
  image: TGraphic;
begin
  // Check for new messages
  if FMailSlotServer.MessageCount > 0 then
  begin
    // read content of the message
    len := FMailSlotServer.Read(s);
    if len > 0 then
    begin
      // create an image from a base64 encoded string
      image := CreateGraphicFromBase64Str(s);
      try
        // assign the received image to the image control
        if Assigned(image) then
          Image1.Picture.Assign(image);
      finally
        // free the image object once it's not needed anymore
        image.Free;
      end;
    end;
  end;
end;

end.
