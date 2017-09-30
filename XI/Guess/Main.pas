unit Main;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  Graphics, Controls, Forms,
  IWHTMLControls, IWControl, IWCompButton,
  IWCompLabel, IWCompEdit, IWContainer, IWRegion, IWBaseControl,
  IWCompRectangle, IWVCLBaseContainer, IWVCLBaseControl,IWColor,
  IWHTMLContainer, IWBaseHTMLControl, IWHTML40Container;

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
    procedure butnGuessAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure linkQuitAsyncClick(Sender: TObject; EventParams: TStringList);
  protected
    FGuessCount: Integer;
    FMagicNo: Integer;
  public
  end;

implementation
{$R *.dfm}

procedure TformMain.IWFormModuleBaseCreate(Sender: TObject);
begin
  FMagicNo := Random(100) + 1;
  lablResponse.Caption := '';
  FGuessCount := 1;
end;

procedure TformMain.linkQuitAsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
raise exception.Create('Boo!');
  //For demo purposes - Terminate via Async event.
  WebApplication.Terminate('Thank you for playing!');
end;

procedure TformMain.butnGuessAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  LGuess: Integer;
begin
  //Using Async events. Only the changed label will update.
  lablResponse.Caption := '';
  LGuess := StrToIntDef(Trim(editGuess.Text), MaxInt);
  if LGuess = MaxInt then begin
    WebApplication.ShowMessage(editGuess.Text + ' is not a valid number.');
  end else if (LGuess < 1) or (LGuess > 100) then begin
    WebApplication.ShowMessage('Only numbers between 1 and 100 are valid.');
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
  editGuess.SetFocus;  // this is a workaround for a IE8 bug, which causes the
                       // changes to the edit to not be submitted to the IW Server
end;

initialization
  TformMain.SetAsMainForm;
  Randomize;
end.
