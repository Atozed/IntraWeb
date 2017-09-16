unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGradButton, IWCompLabel;

type
  TIWForm1 = class(TIWAppForm)
    IWGradButton1: TIWGradButton;
    IWGradButton2: TIWGradButton;
    IWLabel1: TIWLabel;
    procedure IWGradButton1Click(Sender: TObject);
    procedure IWGradButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm1.IWGradButton1Click(Sender: TObject);
begin
  if IWServerController.AllowMultipleSessionsPerUser then begin
    WebApplication.NewWindow('/' + WebApplication.AppID + '/myxml.xml');
  end else begin
    WebApplication.NewWindow('/myxml.xml');
  end;
end;

procedure TIWForm1.IWGradButton2Click(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://www.atozed.com');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
