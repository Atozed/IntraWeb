unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, IWCompLabel, IPPeerClient,
  REST.Client, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.ObjectScope, IWCompMemo, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TIWForm1 = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWButton_Post: TIWButton;
    IWButton_Get: TIWButton;
    IWMemo_Response: TIWMemo;
    IdHTTP1: TIdHTTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    procedure IWButton_PostClick(Sender: TObject);
    procedure IWButton_GetClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm1.IWButton_PostClick(Sender: TObject);
var
   Response: String;
   Parameters: TStringList;
begin
   IWMemo_Response.Lines.Clear;

   try
      IdHTTP1.HTTPOptions           := [hoForceEncodeParams,
                                       hoNoProtocolErrorException,
                                       hoWantProtocolErrorContent];

      IdHTTP1.Request.CharSet       := 'utf-8';
      IdHTTP1.Request.ContentType   := 'application/x-www-form-urlencoded';
      IdHTTP1.Request.BasicAuthentication := True;
      IdHTTP1.Request.Username      := 'api';
      IdHTTP1.Request.Password      := 'key-3ax6xnjp29jd6fds4gc373sgvjxteol0';

      Parameters := TStringList.Create;
      Parameters.Values[ 'from' ]   := 'Excited User <excited@samples.mailgun.org>';
      Parameters.Values[ 'to' ]     := 'devs@mailgun.net';
      Parameters.Values[ 'subject' ]:= 'Hello';
      Parameters.Values[ 'text' ]   := 'Testing some Mailgun awesomeness!';

      IWMemo_Response.Text := IdHTTP1.Post( 'https://api.mailgun.net/v3/samples.mailgun.org/messages', Parameters );
   finally
      Parameters.Free;
   end;
end;

procedure TIWForm1.IWButton_GetClick(Sender: TObject);
begin
   IWMemo_Response.Lines.Clear;

   IdHTTP1.HTTPOptions           := [];
   IdHTTP1.Request.CharSet       := 'utf-8';
   IdHTTP1.Request.ContentType   := 'application/json';
   IdHTTP1.Request.BasicAuthentication := True;
   IdHTTP1.Request.Username      := 'api';
   IdHTTP1.Request.Password      := 'key-3ax6xnjp29jd6fds4gc373sgvjxteol0';

   IWMemo_Response.Text := IdHTTP1.Get( 'https://api.mailgun.net/v3/domains/samples.mailgun.org/credentials' );
end;

initialization
  TIWForm1.SetAsMainForm;

end.
