unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  Vcl.Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, IWCompMemo;

type
  TIWForm1 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    IWMemo1: TIWMemo;
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Content.Handlers, IW.Content.Form, IW.Content.XML;

initialization
  TIWForm1.SetAsMainForm;

end.
