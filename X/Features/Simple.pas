//
unit Simple;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWControl, IWHTMLControls, IWCompButton,
  IWCompEdit, IWCompLabel, IWCompText, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformSimple = class(TIWAppForm)
    IWText1: TIWText;
    IWLabel1: TIWLabel;
    lablHello: TIWLabel;
    editName: TIWEdit;
    butnTalk: TIWButton;
    framMenu1: TframMenu;
    procedure butnTalkClick(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
  protected
    FLastName: string;
  public
  end;

implementation

uses IWForm;
{$R *.dfm}

procedure TformSimple.butnTalkClick(Sender: TObject);
begin
  if Length(editName.Text) = 0 then begin
    lablHello.Visible := False;
    lablHello.Caption := '';
    WebApplication.ShowMessage('You did not enter your name!');
  end else begin
    lablHello.Visible := True;
    FLastName := Trim(editName.Text);
    lablHello.Caption := 'Hello ' + FLastName + '.';
    editName.Text := '';
  end;
end;

procedure TformSimple.IWAppFormDestroy(Sender: TObject);
begin
  if Length(FLastName) > 0 then begin
     WebApplication.ShowMessage('Good bye ' + FLastName + '!');
  end;
end;

end.
