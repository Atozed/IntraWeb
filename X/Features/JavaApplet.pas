//
unit JavaApplet;
{PUBDIST}

interface

uses
  IWAppForm, IWHTMLControls, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWCompEdit, IWCompLabel, IWCompButton, IWControl, MenuFrame,
  IWBaseControl, IWVCLBaseControl, IWBaseHTMLControl;

type
  TformJavaApplet = class(TIWAppForm)
    javaPacText: TIWApplet;
    butnShowMe: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    editLine1: TIWEdit;
    editLine2: TIWEdit;
    editLine3: TIWEdit;
    framMenu1: TframMenu;
    procedure butnShowMeClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  SysUtils;

procedure TformJavaApplet.butnShowMeClick(Sender: TObject);
begin
  with javaPacText.Params do begin
    Values['text1'] := Trim(editLine1.Text);
    Values['text2'] := Trim(editLine2.Text);
    Values['text3'] := Trim(editLine3.Text);
  end;
  javaPacText.Visible := True;
end;

end.
