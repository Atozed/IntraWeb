unit uForm2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls;

type
  TIWForm2 = class(TIWAppForm)
    IWLink1: TIWLink;
    IWLabel1: TIWLabel;
    procedure IWLink1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWLink1Click(Sender: TObject);
begin
  Release;
end;

end.
