unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompExtCtrls,
  IWCompButton, IWCompText;

type
  TIWForm2 = class(TIWAppForm)
    IWImageFile1: TIWImageFile;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWImageFile2: TIWImageFile;
    IWText1: TIWText;
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses Graphics;

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  BGColor := clBlack;
end;

procedure TIWForm2.IWButton2Click(Sender: TObject);
begin
  BGColor := clGreen;
end;

procedure TIWForm2.IWButton3Click(Sender: TObject);
begin
  BGColor := clRed;
end;

procedure TIWForm2.IWButton4Click(Sender: TObject);
begin
  BGColor := clYellow;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
