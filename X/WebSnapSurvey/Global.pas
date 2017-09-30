unit Global;

interface

uses
  Classes,
  Graphics,
  SyncObjs;

type
  TSTMovie = (miMotionPicture, miWrathOfKhan, miSearchForSpock, miVoyageHome, miFinalFrontier
   , miUndiscoveredCountry, miFirstContact, miGenerations, miInsurrection);

var
  GLock: TCriticalSection;
  GMovies: array[TSTMovie] of string = ('The Motion Picture', 'The Wrath of Khan'
   , 'The Search for Spock', 'The Voyage Home', 'The Final Frontier', 'The Undiscovered Country'
   , 'First Contact', 'Generations', 'Insurrection');
  GColors: array[TSTMovie] of TColor = (clGreen, clBlue, clRed, clGray, clAqua, clMaroon, clTeal
   , clLime, clSilver);
  GVotesBest: TList = nil;
  GVotesWorst: TList = nil;

// Procs
  procedure GetVotes(ABest: TList; AWorst: TList);
  procedure RecordVote(ABest: TSTMovie; AWorst: TSTMovie);

implementation

uses
  SysUtils;

procedure GetVotes(ABest: TList; AWorst: TList);
begin
  GLock.Enter; try
    ABest.Assign(GVotesBest);
    AWorst.Assign(GVotesWorst);
  finally GLock.Leave; end;
end;

procedure RecordVote(ABest: TSTMovie; AWorst: TSTMovie);
begin
  GLock.Enter; try
    GVotesBest[Ord(ABest)] := TObject(Integer(GVotesBest[Ord(ABest)]) + 1);
    GVotesWorst[Ord(AWorst)] := TObject(Integer(GVotesWorst[Ord(AWorst)]) + 1);
  finally GLock.Leave; end;
end;

procedure Initialize;
var
  i: TSTMovie;
begin
  GLock := TCriticalSection.Create;
  GVotesBest := TList.Create;
  GVotesWorst := TList.Create;
  for i := Low(i) to High(i) do begin
    GVotesBest.Add(TObject(0));
    GVotesWorst.Add(TObject(0));
  end;
end;

initialization
  Initialize;
finalization
  FreeAndNil(GVotesWorst);
  FreeAndNil(GVotesBest);
  FreeAndNil(GLock);
end.
