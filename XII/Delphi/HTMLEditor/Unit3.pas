unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWHTMLControls;

type
  TIWForm3 = class(TIWAppForm)
    IWLink1: TIWLink;
    IWLink2: TIWLink;
    procedure IWLink1Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm3.IWLink1Click(Sender: TObject);
begin
  WebApplication.GoToURL('/$/iwedit/HTMLDoc/index.html');
end;

procedure TIWForm3.IWLink2Click(Sender: TObject);
begin
  WebApplication.GoToURL('HTMLDoc/index.html');
end;

initialization
  TIWForm3.SetAsMainForm;

end.
