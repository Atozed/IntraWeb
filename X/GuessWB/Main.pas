//
unit Main;

interface

uses
  IWPageForm, IWApplication,
  SysUtils, Classes,
  IWCompButton, IWInit,
  IWCompLabel, IWCompEdit, IWControl, Controls, 
  IWTemplateProcessorHTML, IWHTMLControls, IWBaseControl,
  IWVCLBaseControl;
            
type
  TformMain = class(TIWPageForm)
    editGuess: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    butnGuess: TIWButton;
    lablResponse: TIWLabel;
    lablGuessNo: TIWLabel;
    procedure butnGuessClick(Sender: TObject);
  protected
  public
  end;

implementation

uses IWBaseForm, HTTPApp;
{$R *.dfm}

procedure TformMain.butnGuessClick(Sender: TObject);
var
  LGuess: Integer;
  LMagicNo: Integer;
  LGuessCount: Integer;
begin
  // Read Fields in
  LGuessCount := StrToIntDef(Params.Values['GuessCount'], 1);
  LMagicNo := StrToIntDef(Params.Values['MagicNo'], -1);
  if LMagicNo = -1 then begin
    LMagicNo := Random(100) + 1;
  end;
  //
  lablResponse.Caption := '';
  LGuess := StrToIntDef(Trim(editGuess.Text), MaxInt);
  if LGuess = MaxInt then begin
    lablResponse.Caption := editGuess.Text + ' is not a valid number.';
  end else if (LGuess < 1) or (LGuess > 100) then begin
    lablResponse.Caption := 'Only numbers between 1 and 100 are valid.';
  end else if LGuess < LMagicNo then begin
    lablResponse.Caption := IntToStr(LGuess) + ' is too low.';
  end else if LGuess > LMagicNo then begin
    lablResponse.Caption := IntToStr(LGuess) + ' is too high.';
  end else if LGuess = LMagicNo then begin
    lablResponse.Caption := 'Fantastic! You guessed it in ' + IntToStr(LGuessCount) + ' guesses.';
    butnGuess.Visible := False;
  end;
  lablResponse.Visible := Length(lablResponse.Caption) > 0;
  lablGuessNo.Caption := 'Guess #' + IntToStr(LGuessCount + 1);
  editGuess.Text := '';
  // WriteFields out
  HiddenFields.Values['MagicNo'] := IntToStr(LMagicNo);
  HiddenFields.Values['GuessCount'] := IntToStr(LGuessCount + 1);
end;

initialization
  Randomize;
end.
