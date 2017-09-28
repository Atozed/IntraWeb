unit Main;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  Graphics, Controls, Forms,
  IWHTMLControls, IWControl, IWCompButton,
  IWCompLabel, IWCompEdit, IWContainer, IWRegion, IWBaseControl,
  IWCompRectangle, IWVCLBaseContainer, IWVCLBaseControl,IWColor,
  IWHTMLContainer, IWBaseHTMLControl, IWHTML40Container, IWCompFile;

type
  TformMain = class(TIWAppForm)
    linkQuit: TIWLink;
    IWRegion1: TIWRegion;
    editGuess: TIWEdit;
    IWLabel1: TIWLabel;
    butnGuess: TIWButton;
    lablResponse: TIWLabel;
    lablGuessNo: TIWLabel;
    IWRectangle1: TIWRectangle;
    procedure IWFormModuleBaseCreate(Sender: TObject);
    procedure butnGuessAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure linkQuitAsyncClick(Sender: TObject; EventParams: TStringList);
  protected
    mGuessCount: Integer;
    mMagicNo: Integer;
  public
  end;

implementation
{$R *.dfm}

procedure TformMain.IWFormModuleBaseCreate(Sender: TObject);
begin
  mGuessCount := 1;
  mMagicNo := Random(100) + 1;
  lablResponse.Caption := '';
end;

procedure TformMain.linkQuitAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  //For demo purposes - Terminate via Async event.
  WebApplication.Terminate('Thank you for playing!');
end;

procedure TformMain.butnGuessAsyncClick(Sender: TObject; EventParams: TStringList);
var
  xGuess: Integer;
begin
  // Using Async events. Only the changed items will update.
  lablResponse.Caption := '';
  xGuess := StrToIntDef(Trim(editGuess.Text), MaxInt);
  if xGuess = MaxInt then begin
    WebApplication.ShowMessage(editGuess.Text + ' is not a valid number.');
  end else if (xGuess < 1) or (xGuess > 100) then begin
    WebApplication.ShowMessage('Only numbers between 1 and 100 are valid.');
  end else if xGuess = mMagicNo then begin
    WebApplication.Terminate('Fantastic! You guessed it in ' + IntToStr(mGuessCount) + ' guesses.');
  end else begin
    if xGuess < mMagicNo then begin
      lablResponse.Caption := IntToStr(xGuess) + ' is too low.';
    end else begin
      lablResponse.Caption := IntToStr(xGuess) + ' is too high.';
    end;
    Inc(mGuessCount);
  end;
  lablResponse.Visible := Length(lablResponse.Caption) > 0;
  lablGuessNo.Caption := 'Guess #' + IntToStr(mGuessCount);
  editGuess.Text := '';
  editGuess.SetFocus();
end;

initialization
  TformMain.SetAsMainForm;
  Randomize;
end.
