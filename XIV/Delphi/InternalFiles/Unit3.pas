unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm3 = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm3.IWAppFormCreate(Sender: TObject);
begin
  // add a class to our Button.
  IWButton1.Css := 'myButton';
  // add a reference to some internal file named CustomStyle.css
  // in this case, /$/CSS/ prefix is mandatory.
  // The file CustomStyle.css does not exist. Its content will be generated on the fly
  // using TIWServerInternalFiles event (check code in ServerController)
  PageContext.AddLinkFile('/$/CSS/CustomStyle.css');
end;

initialization
  TIWForm3.SetAsMainForm;

end.
