unit PageResultsForm;
{PUBDIST}

interface

uses
  IWApplication, IWTypes, IWPageForm, Graphics, Classes, Controls,
  IWControl, IWExtCtrls, IWBaseControl, IWVCLBaseControl;

type
  TformResults = class(TIWPageForm)
    imagResults: TIWImage;
    procedure IWPageFormRender(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  Global,
  Math,
  SysUtils;

procedure TformResults.IWPageFormRender(Sender: TObject);
var
  i: TSTMovie;
  LMaxBest: Integer;
  LMaxWorst: Integer;
  LMaxWidth: Integer;
  LVotesBest: TList;
  LVotesWorst: TList;
begin
  LMaxBest := 0;
  LMaxWorst := 0;
  LMaxWidth := 0;
  LVotesBest := TList.Create; try
    LVotesWorst := TList.Create; try
      GetVotes(LVotesBest, LVotesWorst);
      with imagResults.Picture.Bitmap.Canvas do begin
        Brush.Style := bsClear;
        Font.Color := clBlue;
        Font.Name := 'Script';
        Font.Size := 18;
        for i := Low(i) to High(i) do begin
          TextOut(85, 98 + 24 * Ord(i), GMovies[i]);
          LMaxWidth := Max(LMaxWidth, TextWidth(GMovies[i]));
          LMaxBest := Max(LMaxBest, Integer(LVotesBest[Ord(i)]));
          LMaxWorst := Max(LMaxWorst, Integer(LVotesWorst[Ord(i)]));
        end;
        TextOut(330, 74, 'Best');
        TextOut(480, 74, 'Worst');
        //
        Brush.Style := bsSolid;
        for i := Low(i) to High(i) do begin
          Brush.Color := GColors[i];
          FillRect(Rect(310, 98 + 24 * Ord(i)
           , 310 + Trunc((Integer(LVotesBest[Ord(i)]) / LMaxBest) * 150)
           , 98 + 24 * Ord(i) + 20));
          Brush.Color := GColors[TSTMovie(Ord(High(i)) - Ord(i))];
          FillRect(Rect(480, 98 + 24 * Ord(i)
           , 480 + Trunc((Integer(LVotesWorst[Ord(i)]) / LMaxWorst) * 150)
           , 98 + 24 * Ord(i) + 20));
        end;
      end;
    finally FreeAndNil(LVotesWorst); end;
  finally FreeAndNil(LVotesBest); end;
end;

end.
