unit Page1Form;
{PUBDIST}

interface

uses
  IWApplication, IWTypes, IWPageForm, IWCompButton, IWCompLabel, Classes,
  Controls, IWControl, IWCompListbox, IWCompText, IWBaseControl, IWInit,
  IWVCLBaseControl;

type
  TformPage1 = class(TIWPageForm)
    cmboBest: TIWComboBox;
    IWLabel1: TIWLabel;
    butnVote: TIWButton;
    IWLabel2: TIWLabel;
    cmboWorst: TIWComboBox;
    textMsg: TIWText;
    procedure butnVoteClick(Sender: TObject);
    procedure IWPageFormCreate(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  Global,
  SysUtils,
  WebCntxt, WebDisp;

procedure TformPage1.butnVoteClick(Sender: TObject);
var
  LBest: TSTMovie;
  LWorst: TSTMovie;
begin
  LBest := miMotionPicture;
  LWorst := miMotionPicture;
  if cmboBest.ItemIndex = -1 then begin
    textMsg.Lines.Text := 'Please select a choice for best Star Trek movie.';
  end else if cmboWorst.ItemIndex = -1 then begin
    textMsg.Lines.Text := 'Please select a choice for worst Star Trek movie.';
  end else begin
    LBest := TSTMovie(cmboBest.Items.Objects[cmboBest.ItemIndex]);
    LWorst := TSTMovie(cmboWorst.Items.Objects[cmboWorst.ItemIndex]);
    if LBest = LWorst then begin
      textMsg.Lines.Text := 'Sorry - but you cannot pick the same movie for best and worst.';
    end else begin
      if WebContext.Session.Values['Confirm'] <> 'Y' then begin
        if LBest = miFinalFrontier then begin
          textMsg.Lines.Text := 'Ugh. The Final Frontier was trully horrid. Are you sure that is'
           + ' your choice for best?';
          butnVote.Caption := 'Vote with my questionable choice anwyays';
          WebContext.Session.Values['Confirm'] := 'Y';
        end else if LBest = miVoyageHome then begin
          textMsg.Lines.Text := 'Good choice! The Voyage home was good wasn''t it?';
          butnVote.Caption := 'Record my vote!';
          WebContext.Session.Values['Confirm'] := 'Y';
        end;
      end;
    end;
  end;
  textMsg.Visible := textMsg.Lines.Count > 0;
  if not textMsg.Visible then begin
    RecordVote(LBest, LWorst);
    ProduceResponse := False;
    DispatchPageName('PageResults', WebContext.Response, []);
  end;
end;

procedure TformPage1.IWPageFormCreate(Sender: TObject);
var
  i: TSTMovie;
begin
  for i := Low(i) to High(i) do begin
    cmboBest.Items.AddObject(GMovies[i], TObject(i));
  end;
  cmboWorst.Items.Assign(cmboBest.Items);
end;

end.
