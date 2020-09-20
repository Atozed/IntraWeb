//
unit MapForm;
{PUBDIST}

interface

uses
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}IWJpeg,{$ELSE}jpeg,{$ENDIF}
  IWAppForm, IWApplication, IWTypes, Classes, IWControl,
  IWHTMLControls, IWCompLabel, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl, IWCompExtCtrls, IWCompMemo;

type
  TformMap = class(TIWAppForm)
    imagMap: TIWImage;
    IWLabel1: TIWLabel;
    framMenu1: TframMenu;
    IWMemo1: TIWMemo;
    procedure imagMapAsyncMouseDown(Sender: TObject; EventParams: TStringList);
  protected
    FLastX: Integer;
    FLastY: Integer;
  public
  end;

implementation
{$R *.dfm}

uses
  System.SysUtils;

procedure TformMap.imagMapAsyncMouseDown(Sender: TObject;
  EventParams: TStringList);
var
  x, y: Integer;
begin
  x := imagMap.GetAsyncParam('X', 0);
  y := imagMap.GetAsyncParam('Y', 0);
  IWMemo1.Lines.Add('X = ' + IntToStr(x) + ', Y = ' + IntToStr(y));
end;

end.
