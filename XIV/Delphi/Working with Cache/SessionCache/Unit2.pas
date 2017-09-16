unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo,
  IWCompExtCtrls, IWCompButton, IWCompLabel;

type
  TIWForm2 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWImageFile1: TIWImageFile;
    IWImageFile2: TIWImageFile;
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController, Unit3;

procedure TIWForm2.IWAppFormCreate(Sender: TObject);
begin
  IWImageFile1.ImageFile.URL := UserSession.Image1Url;
  IWImageFile2.ImageFile.URL := UserSession.Image2Url;
end;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  TIWForm3.Create(WebApplication).Show;
  Release;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
