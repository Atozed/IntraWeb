unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  Self.PageContext.AddLinkFile('CustomFonts.css');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
