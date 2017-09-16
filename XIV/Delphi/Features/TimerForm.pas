//
unit TimerForm;
{PUBDIST}

interface

uses
  IWAppForm, IWHTMLControls, Classes, IWControl,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWCompLabel, IWCompText, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseComponent, IWBaseHTMLComponent, IWBaseHTMLControl,
  IWBaseHTML40Component, IWCompExtCtrls;

type
  TformTimer = class(TIWAppForm)
    IWTimer1: TIWTimer;
    IWText1: TIWText;
    lablCount: TIWLabel;
    framMenu1: TframMenu;
    procedure IWTimer1Timer(Sender: TObject);
  protected
    FCount: Integer;
  public
  end;

implementation
{$R *.dfm}

uses
  SysUtils;

procedure TformTimer.IWTimer1Timer(Sender: TObject);
begin
  Inc(FCount);
  lablCount.Visible := True;
  lablCount.Caption := 'This page has been auto refreshed ' + IntToStr(FCount) + ' times.'
end;

end.
