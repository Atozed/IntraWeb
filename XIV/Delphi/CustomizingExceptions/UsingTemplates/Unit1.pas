unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component, IWCompExtCtrls,
  IWHTMLControls, IWCompLabel, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompMemo, IWCompButton;

type
  TIWForm1 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWURL1: TIWURL;
    IWTimer1: TIWTimer;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWButton1: TIWButton;
    IWLabel6: TIWLabel;
    procedure IWTimer1AsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
    procedure UpdateLabels;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  ServerController;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  IWTimer1.Interval := (IWServerController.SessionTimeout * 60 * 1000) + 1000;
  IWMemo1.Lines.Text := Format(IWMemo1.Lines.Text, [IWServerController.SessionTimeout, IWServerController.SessionTimeout]);
  UpdateLabels;
end;

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  WebApplication.ShowMessage('If you see this message, the timeout didn''t occur yet!');
  UpdateLabels;
end;

procedure TIWForm1.IWTimer1AsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.ShowMessage('User will never see this message if a timeout occurs');
  UpdateLabels;
end;

procedure TIWForm1.UpdateLabels;
begin
  IWLabel1.Caption := 'Last access to session at: ' + DateTimeToStr(WebApplication.LastAccess);
  IWLabel5.Caption := 'Your Session Timeout is: ' + IntToStr(IWServerController.SessionTimeout) + ' minute(s)';
  IWLabel6.Caption := 'Your Session will expire at: ' + DateTimeToStr(WebApplication.LastAccess + IWServerController.SessionTimeout / (24*60));
end;

initialization
  TIWForm1.SetAsMainForm;

end.
