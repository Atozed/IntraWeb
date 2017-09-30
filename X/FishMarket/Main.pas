unit Main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, IWHTMLControls,
  Controls, IWBaseControl, IWControl, IWCompText, IWCompEdit, Cart,
  IWCompLabel, jpeg, IWExtCtrls, IWVCLBaseControl, IWBaseHTMLControl;

type
  TFormMain = class(TIWAppForm)
    IWText1: TIWText;
    IWLink1: TIWLink;
    IWImage1: TIWImage;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    procedure IWLink1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, IWBaseForm;


procedure TFormMain.IWLink1Click(Sender: TObject);
begin
  WebApplication.GoToURL('../files/www/index.html');
end;

initialization
  TFormMain.SetAsMainForm


end.
