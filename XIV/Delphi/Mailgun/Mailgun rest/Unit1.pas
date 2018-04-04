unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWVCLComponent,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainerLayout,
  IWTemplateProcessorHTML, Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompButton, IWCompLabel, IPPeerClient,
  REST.Client, REST.Authenticator.Basic, Data.Bind.Components,
  Data.Bind.ObjectScope, IWCompMemo;

type
  TIWForm1 = class(TIWAppForm)
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    IWButton_Post: TIWButton;
    IWButton_Get: TIWButton;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    HTTPBasicAuthenticator1: THTTPBasicAuthenticator;
    IWMemo_Response: TIWMemo;
    procedure IWButton_PostClick(Sender: TObject);
    procedure IWButton_GetClick(Sender: TObject);
  public
  end;

implementation

uses
  REST.Types;

{$R *.dfm}

procedure TIWForm1.IWButton_PostClick(Sender: TObject);
begin
   IWMemo_Response.Lines.Clear;

   RESTRequest1.Params.Clear;
   RESTRequest1.AddParameter( 'from', 'Excited User <excited@samples.mailgun.org>', pkGETorPOST );
   RESTRequest1.AddParameter( 'to', 'devs@mailgun.net', pkGETorPOST );
   RESTRequest1.AddParameter( 'subject', 'Hello', pkGETorPOST );
   RESTRequest1.AddParameter( 'text', 'Testing some Mailgun awesomeness!', pkGETorPOST );

   RESTRequest1.Method  := rmPOST;
   RESTRequest1.Resource:= 'samples.mailgun.org/messages';
   RESTRequest1.Execute;

   IWMemo_Response.Lines.Add( RESTResponse1.Content );
end;

procedure TIWForm1.IWButton_GetClick(Sender: TObject);
begin
   IWMemo_Response.Lines.Clear;

   RESTRequest1.Params.Clear;

   RESTRequest1.Method  := rmGET;
   RESTRequest1.Resource:= 'domains/samples.mailgun.org/credentials';
   RESTRequest1.Execute;

   IWMemo_Response.Lines.Add( RESTResponse1.Content );
end;

initialization
  TIWForm1.SetAsMainForm;

end.
