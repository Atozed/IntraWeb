unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWHTMLControls, IWCompRectangle, IWCompEdit, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWCompText;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLink1: TIWLink;
    IWEdit1: TIWEdit;
    IWText1: TIWText;
    procedure IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
  private
    FCounter: Integer;
  public
  end;

implementation

{$R *.dfm}

uses
  Unit2, IW.Content.Form, IW.Content.Handlers;

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  WebApplication.GoToURL('/SecondForm');
end;

procedure TIWForm1.IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  Inc(FCounter);
  WebApplication.ShowMessage('Hello from ' + Name + ' (' + IntToStr(FCounter) + '): ' + IWEdit1.Text);
end;

//<script type = "text/javascript" > history.pushState(null, null, location.href); history.back(); history.forward(); window.onpopstate = function () { history.go(1); }; </script>

initialization
  TIWForm1.SetAsMainForm;
  // SetURL creates a content handler for this form and set's the URL for it according to the parameters
  // In this case, I want the URL to be http://<domain>/MainForm:
  TIWForm1.SetURL('', 'MainForm');
  // I'm also creating 2 content handlers that I want to redirect to this same form:
  // The StartHandler (i.e. it will catch all requests that create a new session
  THandlers.AddStartHandler('', 'MainForm', TContentForm.Create(TIWForm1));
  // And the root handler which will catch requests to the root address of your app
  THandlers.AddRootHandler('', 'MainForm', TContentForm.Create(TIWForm1));

end.
