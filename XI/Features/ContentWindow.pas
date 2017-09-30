//
unit ContentWindow;
{PUBDIST}

interface

uses
  IWAppForm, Classes, IWHTMLControls, IWCompLabel,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWCompButton, IWControl, IWCompEdit, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformContentWindow = class(TIWAppForm)
    editURL: TIWEdit;
    butnLaunch: TIWButton;
    IWLabel1: TIWLabel;
    framMenu1: TframMenu;
    procedure butnLaunchClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  IWForm,
  SysUtils;

procedure TformContentWindow.butnLaunchClick(Sender: TObject);
begin
  AddToInitProc('NewWindow(''' + Trim(editURL.Text) + ''', ''MyWindow'', '''');');
end;

end.
