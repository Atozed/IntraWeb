unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompEdit, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTML40Component,
  IWCompExtCtrls, IWCompButton, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompProgressBar, IWCompLabel, Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWTimer1: TIWTimer;
    IWEdit1: TIWEdit;
    IWLabel1: TIWLabel;
    regProgressMax: TIWRegion;
    regProgressCur: TIWRegion;
    lbDoneStatus: TIWLabel;
    procedure IWTimer1AsyncTimer(Sender: TObject;
      EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
  public
  end;


var
  Pcnt : integer;
  fProgressMax : integer;

implementation

{$R *.dfm}


procedure TIWForm1.IWTimer1AsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  inc(Pcnt);
  IWEdit1.Text := IntToStr(Pcnt);
  if ((fProgressMax <> 0) and ( regProgressCur.Width < regProgressMax.Width)) then
    regProgressCur.Width   := Round(( regProgressMax.Width * Pcnt ) / fProgressMax )
  else if (regProgressCur.Width >= regProgressMax.Width) then begin
    lbDoneStatus.Caption := '*** DONE ***';
    lbDoneStatus.Visible := True;
    IWTimer1.Enabled := False;
    IWButton1.Caption := 'Start';
  end;
end;

procedure TIWForm1.IWButton1Click(Sender: TObject);
begin
  Pcnt := 0;
  regProgressCur.Width := 0;
  fProgressMax         := 10;
  IWTimer1.Enabled := true;
  IWButton1.Caption := 'Processing';
end;

initialization
  TIWForm1.SetAsMainForm;

end.
