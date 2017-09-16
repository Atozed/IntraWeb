unit Unit8;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls,
  IWCompLabel, IWCompButton, IWHTMLControls;

type
  TIWForm8 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWTimer1: TIWTimer;
    IWLabel2: TIWLabel;
    IWURL1: TIWURL;
    IWLabel3: TIWLabel;
    procedure IWTimer1AsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm8.IWAppFormCreate(Sender: TObject);
begin
  IWLabel1.Caption := 'Session started at: ' + DateTimeToStr(Now);
end;

procedure TIWForm8.IWTimer1AsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowMessage('User will never see this message if a timeout occurs');
end;

initialization
  TIWForm8.SetAsMainForm;

end.
