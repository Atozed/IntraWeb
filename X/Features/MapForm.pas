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
  IWHTMLControls, IWExtCtrls, IWCompLabel, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformMap = class(TIWAppForm)
    imagMap: TIWImage;
    IWLabel1: TIWLabel;
    framMenu1: TframMenu;
    procedure imagMapMouseDown(ASender: TObject; const AX, AY: Integer);
  protected
    FLastX: Integer;
    FLastY: Integer;
  public
  end;

implementation
{$R *.dfm}

procedure TformMap.imagMapMouseDown(ASender: TObject; const AX, AY: Integer);
begin
  with imagMap.Picture.Bitmap.Canvas do begin
    Brush.Style := bsClear;
    Font.Color := clRed;
    Font.Style := [fsBold];
    TextOut(AX - TextWidth('X') div 2, AY - TextHeight('X') div 2, 'X');
    if (FLastX > 0) and (FLastY > 0) then begin
      Pen.Color := clBlue;
      MoveTo(FLastX, FLastY);
      LineTo(AX, AY);
    end;
    FLastX := AX;
    FLastY := AY;
  end;
end;

end.
