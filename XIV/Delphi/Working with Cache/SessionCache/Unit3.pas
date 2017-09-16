unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompMemo,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompExtCtrls, IWCompButton, Unit2;

type
  TIWForm3 = class(TIWAppForm)
    IWImageFile1: TIWImageFile;
    IWImageFile2: TIWImageFile;
    IWMemo1: TIWMemo;
    IWButton1: TIWButton;
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm3.IWAppFormCreate(Sender: TObject);
begin
  IWImageFile1.ImageFile.URL := UserSession.Image1Url;
  IWImageFile2.ImageFile.URL := UserSession.Image2Url;
end;

procedure TIWForm3.IWButton1Click(Sender: TObject);
begin
  TIWForm2.Create(WebApplication).Show;
  Release;
end;

end.
