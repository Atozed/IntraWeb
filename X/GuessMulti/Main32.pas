// 3.2 Main Form
unit Main32;

interface

uses
  IWAppForm32, IWApplication,
  SysUtils, Classes,
  {$IFDEF Linux}QGraphics,{$ELSE}Graphics,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  IWHTMLControls, IWControl, IWCompButton,
  IWCompLabel, IWCompEdit, IWContainer, IWRegion, IWBaseControl,
  IWControl32, IWCompLabel32, IWLayoutMgrHTML,
  IWTemplateProcessorHTML32, IWCompEdit32, IWCompButton32,
  IWBaseLayoutComponent, IWBaseContainerLayout, IWContainer32Layout,
  IWVCLBaseControl, IWVCLComponent, IWBaseHTMLControl;

type
  TformMain32 = class(TIWAppForm32)
    lablText: TIWLabel32;
    lablGuess: TIWLabel32;
    editGuess: TIWEdit32;
    butnGuess: TIWButton32;
    lablGuessNo: TIWLabel32;
    lablResponse: TIWLabel32;
    IWTemplateProcessorHTML321: TIWTemplateProcessorHTML32;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure butnGuessClick(Sender: TObject);
  protected
    FGuessCount: Integer;
    FMagicNo: Integer;
  public
  end;

implementation
{$R *.dfm}

procedure TformMain32.IWFormModuleBaseCreate(Sender: TObject);
begin
  FMagicNo := Random(100) + 1;
  FGuessCount := 1;
end;

procedure TformMain32.butnGuessClick(Sender: TObject);
var
  LGuess: Integer;
begin
  lablResponse.Caption := '';
  LGuess := StrToIntDef(Trim(editGuess.Text), MaxInt);
  if LGuess = MaxInt then begin
    lablResponse.Caption := editGuess.Text + ' is not a valid number';
  end else if (LGuess < 1) or (LGuess > 100) then begin
    lablResponse.Caption := 'Only numbers between 1 and 100 are valid.';
  end else if LGuess < FMagicNo then begin
    lablResponse.Caption := IntToStr(LGuess) + ' is too low.';
    Inc(FGuessCount);
  end else if LGuess > FMagicNo then begin
    lablResponse.Caption := IntToStr(LGuess) + ' is too high.';
    Inc(FGuessCount);
  end else if LGuess = FMagicNo then begin
    WebApplication.Terminate('Fantastic! You guessed it in ' + IntToStr(FGuessCount) + ' guesses.');
  end;
  lablResponse.Visible := Length(lablResponse.Caption) > 0;
  lablGuessNo.Caption := 'Guess #' + IntToStr(FGuessCount);
  editGuess.Text := '';
end;

initialization
  TformMain32.SetAsMainForm;
  Randomize;
end.
