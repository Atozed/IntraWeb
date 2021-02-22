unit uGridForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWjQGrid,
  IWCompButton, IWCompText, IWCompLabel, IWCompMemo;

type
  TGridForm = class(TIWAppForm)
    IWjQGrid1: TIWjQGrid;
    IWButton1: TIWButton;
    IWLabel1: TIWLabel;
    IWText1: TIWText;
    IWButton4: TIWButton;
    IWButton5: TIWButton;
    IWMemo1: TIWMemo;
    IWButton2: TIWButton;
    procedure IWjQGrid1GetCellText(Sender: TObject; const Row, Col: Integer;
      var CellText: string);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure IWButton4AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton5AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWjQGrid1SaveCell(Sender: TObject; const RowID: string;
      ACol: Integer; const AColName: string; var AValue: string;
      var ASave: Boolean; var AErrorMessage: string);
    procedure IWjQGrid1AsyncSelectRow(Sender: TObject; EventParams: TStringList;
      const RowID: string);
  private
    FFirstNames,
    FLastNames: TStringList;
  public
  end;

implementation

{$R *.dfm}

var
  GridData: array[0..10 - 1, 0..10 - 1] of string;

procedure TGridForm.IWAppFormCreate(Sender: TObject);
begin
  FLastNames := TStringList.Create;
  with FLastNames do
  begin
    Add('Smith');
    Add('Green');
    Add('Jones');
    Add('Wagner');
    Add('Black');
    Add('Donner');
    Add('Bush');
    Add('Arnold');
    Add('Avery');
    Add('Bailey');
    Add('Baker');
    Add('Ball');
    Add('Bell');
    Add('Berry');
    Add('Black');
    Add('Blake');
    Add('Bond');
    Add('Bower');
    Add('Brown');
    Add('Buckland');
    Add('Burgess');
    Add('Butler');
    Add('Cameron');
    Add('Campbell');
    Add('Carr');
    Add('Chapman');
    Add('Churchill');
    Add('Clark');
    Add('Clarkson');
    Add('James');
    Add('Johnston');
    Add('Jones');
    Add('Kelly');
    Add('Kerr');
    Add('King');
    Add('Knox');
    Add('Lambert');
    Add('Langdon');
    Add('Lawrence');
    Add('Lee');
    Add('Lewis');
    Add('Lyman');
  end;
  FFirstNames := TStringList.Create;
  with FFirstNames do
  begin
    Add('Abigail');
    Add('Alexandra');
    Add('Alison');
    Add('Amanda');
    Add('Amelia');
    Add('Amy');
    Add('Andrea');
    Add('Angela');
    Add('Anna');
    Add('Anne');
    Add('Audrey');
    Add('Ava');
    Add('Bella');
    Add('Bernadette');
    Add('Carol');
    Add('Caroline');
    Add('Carolyn');
    Add('Chloe');
    Add('Claire');
    Add('Deirdre');
    Add('Diana');
    Add('Diane');
    Add('Donna');
    Add('Dorothy');
    Add('Elizabeth');
    Add('Ella');
    Add('Emily');
    Add('Emma');
    Add('Faith');
    Add('Felicity');
    Add('Fiona');
    Add('Gabrielle');
    Add('Grace');
    Add('Hannah');
    Add('Heather');
    Add('Irene');
    Add('Jan');
    Add('Jane');
    Add('Jasmine');
    Add('Jennifer');
    Add('Jessica');
    Add('Joan');
    Add('Joanne');
    Add('Julia');
    Add('Karen');
    Add('Katherine');
    Add('Kimberly');
    Add('Kylie');
    Add('Lauren');
    Add('Leah');
    Add('Lillian');
    Add('Lily');
    Add('Lisa');
    Add('Madeleine');
    Add('Maria');
    Add('Mary');
    Add('Megan');
    Add('Melanie');
    Add('Michelle');
    Add('Molly');
    Add('Natalie');
    Add('Nicola');
    Add('Olivia');
    Add('Penelope');
    Add('Pippa');
    Add('Rachel');
    Add('Rebecca');
    Add('Rose');
    Add('Ruth');
    Add('Sally');
    Add('Samantha');
    Add('Sarah');
    Add('Sonia');
    Add('Sophie');
    Add('Stephanie');
    Add('Sue');
    Add('Theresa');
    Add('Tracey');
    Add('Una');
    Add('Vanessa');
    Add('Victoria');
    Add('Virginia');
    Add('Wanda');
    Add('Wendy');
    Add('Yvonne');
    Add('Adam');
    Add('Adrian');
    Add('Alan');
    Add('Alexander');
    Add('Andrew');
    Add('Anthony');
    Add('Austin');
    Add('Benjamin');
    Add('Blake');
    Add('Boris');
    Add('Brandon');
    Add('Brian');
    Add('Cameron');
    Add('Carl');
    Add('Charles');
    Add('Christian');
    Add('Christopher');
    Add('Colin');
    Add('Connor');
    Add('Dan');
    Add('David');
    Add('Dominic');
    Add('Dylan');
    Add('Edward');
    Add('Eric');
    Add('Evan');
    Add('Frank');
    Add('Gavin');
    Add('Gordon');
    Add('Harry');
    Add('Ian');
    Add('Isaac');
    Add('Jack');
    Add('Jacob');
    Add('Jake');
    Add('James');
    Add('Jason');
    Add('Joe');
    Add('John');
    Add('Jonathan');
    Add('Joseph');
    Add('Joshua');
    Add('Julian');
    Add('Justin');
    Add('Keith');
    Add('Kevin');
    Add('Leonard');
    Add('Liam');
    Add('Lucas');
    Add('Luke');
    Add('Matt');
    Add('Max');
    Add('Michael');
    Add('Nathan');
    Add('Neil');
    Add('Nicholas');
    Add('Oliver');
    Add('Owen');
    Add('Paul');
    Add('Peter');
    Add('Phil');
    Add('Piers');
    Add('Richard');
    Add('Robert');
    Add('Ryan');
    Add('Sam');
    Add('Sean');
    Add('Sebastian');
    Add('Simon');
    Add('Stephen');
    Add('Steven');
    Add('Stewart');
    Add('Thomas');
    Add('Tim');
    Add('Trevor');
    Add('Victor');
    Add('Warren');
    Add('William');
  end;
  IWjQGrid1.RowCount := 1000;
end;

procedure TGridForm.IWAppFormDestroy(Sender: TObject);
begin
  FLastNames.Free;
  FFirstNames.Free;
end;

procedure TGridForm.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  Release;
end;

procedure TGridForm.IWButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWjQGrid1.DataStr := '';  // clear previous existing data so it will generate new
  IWjQGrid1.RefreshData;
end;

procedure TGridForm.IWButton5AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  IWjQGrid1.ClearGridData;
end;

function iif(ACondition: boolean; ATrue, AFalse: string): string;
begin
  if ACondition then
    Result := ATrue
  else
    Result := AFalse;
end;

procedure TGridForm.IWjQGrid1GetCellText(Sender: TObject; const Row,
  Col: Integer; var CellText: string);
var
  LAmount: Double;
begin
  CellText := Format('Cell [%d,%d]', [Row, Col]);
  case Col of
    0: CellText := FFirstNames[Random(FFirstNames.Count)] + ' ' + FLastNames[Random(FLastNames.Count)];
    1: CellText := IntToStr(Random(12) + 1) + '/' + IntToStr(Random(29) + 1) + '/' + IntToStr(Random(3) + 1999);
    2: begin
      LAmount := Random * 200;
      if Random(4) = 0 then
      begin
        LAmount := -LAmount;
      end;
      CellText := Format('%s$%f', [iif(LAmount < 0, '-', ''), Abs(LAmount)]);
    end;
  end;
end;

procedure TGridForm.IWjQGrid1SaveCell(Sender: TObject; const RowID: string;
  ACol: Integer; const AColName: string; var AValue: string; var ASave: Boolean;
  var AErrorMessage: string);
begin
  ASave := False;
  AErrorMessage := 'Read only';
end;

procedure TGridForm.IWjQGrid1AsyncSelectRow(Sender: TObject;
  EventParams: TStringList; const RowID: string);
begin
  IWMemo1.Lines.Add('Selected Row: ' + RowID);
  //IWMemo1.ScrollToBottom;
end;

end.
