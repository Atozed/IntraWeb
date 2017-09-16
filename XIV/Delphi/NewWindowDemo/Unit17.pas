unit Unit17;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton;

type
  TIWForm17 = class(TIWAppForm)
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm17.IWButton1Click(Sender: TObject);
begin
  WebApplication.NewWindow(WebApplication.SessionUrlBase + 'Cover Page.pdf', 'New Name', 500, 600, [woButtons, woStatusBar, woMenuBar, woScrollBars, woResizable,
    woCopyHistory, woFullScreen, woDetectBlock]);
end;

initialization
  TIWForm17.SetAsMainForm;

end.
