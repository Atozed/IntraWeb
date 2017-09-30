unit FormMainU;

interface

uses
  Classes,
  SysUtils,
  IWAppForm,
  IWApplication,
  IWColor,
  IWTypes,
  Controls,
  IWVCLBaseControl,
  IWBaseControl,
  IWBaseHTMLControl,
  IWControl,
  IWCompButton,
  IWHTMLTag,
  IWCompRectangle,
  Forms,
  IWVCLBaseContainer,
  IWContainer,
  IWHTMLContainer,
  IWHTML40Container,
  IWRegion,
  IWCompEdit,
  IWCompLabel,
  IWDBStdCtrls,
  IWGrids,
  IWDBGrids,
  DB,
  ADODB,
  IWExtCtrls,
  IWCompListbox;

type
  TFormMain = class(TIWAppForm)
    ContactMap: TIWRegion;
    IWImageFile1: TIWImageFile;
    Directions: TIWRegion;
    IWLabel1: TIWLabel;
    EditOrigin: TIWEdit;
    IWLabel2: TIWLabel;
    EditTarget: TIWEdit;
    IWButton3: TIWButton;
    IWImageButton1: TIWImageButton;
    IWImageButton3: TIWImageButton;
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

uses
  IWForm,
  IWBaseForm,
  ServerController,
  UserSessionUnit;

{$R *.dfm}

const
  //Enter your own Google key here. To test you need to apply for a key that covers "127.0.0.1:8888"
  GoogleKey = 'ABQIAAAAUwtvvk6KAw6wOttnSMG7gRREGtQZq9OFJfHndXhPP8gxXzlLARRRT7Q9Yzj1g2LLjuhijtXHwsoVSA';

procedure TFormMain.IWAppFormRender(Sender: TObject);
begin
  //This is a trick to inject a script file refererence before all other JS
  JavaScriptOnce :=
    '</script>' +
    '<script src="http://maps.google.com/maps?file=api&v=2&key=' + GoogleKey + '" type="text/javascript"></script>' +
    '<script type="text/javascript">';
  //IMPORTANT: use AddToInitProc of *PageContext*
  //   This is rendered after the Google Script reference, but before
  //   "regular" AddToInitProc calls, as used in the OnClick events
  PageContext.AddToInitProc('map = new GMap2(document.getElementById("CONTACTMAP"));');
  //The geocoder / showAddress is used to locate a textual address.
  PageContext.AddToInitProc('geocoder = new GClientGeocoder();');
  //Setup the Directions panel
  PageContext.AddToInitProc('directions = new GDirections(map, document.getElementById("DIRECTIONS"));');
  AddToInitProc('showAddress("' + EditOrigin.Text + '");');
end;

procedure TFormMain.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
   //See FormMain.JavaScript for the definition of "showAddress"
  WebApplication.CallBackResponse.AddJavaScriptToExecute('showAddress("' + EditOrigin.Text + '");');
end;

procedure TFormMain.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  //See FormMain.JavaScript for the definition of "showAddress"
  WebApplication.CallBackResponse.AddJavaScriptToExecute('showAddress("' + EditTarget.Text + '");');
end;

procedure TFormMain.IWButton3AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.CallBackResponse.AddJavaScriptToExecute('directions.load("' +
    Format('%s to %s', [EditOrigin.Text, EditTarget.Text])
    + '");');
end;

initialization
  TFormMain.SetAsMainForm;

end.

