unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm3 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton3AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm3.IWButton1AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WebApplication.ShowNotification('This is a toast. It''s built in!', ntLog);
end;

procedure TIWForm3.IWButton2AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WebApplication.ShowNotification('This is another toast. Your process executed successfully!', ntSuccess);
end;

procedure TIWForm3.IWButton3AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  WebApplication.ShowNotification('This is the 3rd toast type: There was an error!', ntError);
end;


initialization
  TIWForm3.SetAsMainForm;

end.
