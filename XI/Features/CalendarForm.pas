unit CalendarForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWTypes, Controls,
  IWBaseControl, IWControl, IWCompCalendar, IWCompLabel, IWExtCtrls,
  IWCompCheckbox, IWGrids, DB, DBTables, IWDBGrids,
  IWCompListbox, IWCompButton, IWCompEdit, IWCompText, Forms, MenuFrame,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformCalendar = class(TIWAppForm)
    lbActivities: TIWListbox;
    edActivity: TIWEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    DateText: TIWLabel;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    DemoDiary: TIWCalendar;
    framMenu1: TframMenu;
    procedure DemoDiaryGetDateInformation(ADate: TDateTime;
      VInformation: TStrings);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
    procedure DemoDiaryDateChange(ADate: TDateTime);
    procedure lbActivitiesChange(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  protected
    FOriginalText: string;
    FDateList: TStringList;
  end;

implementation

{$R *.dfm}

uses
  ServerController, IWBaseForm, IWSystem;

procedure TformCalendar.DemoDiaryGetDateInformation(ADate: TDateTime;
  VInformation: TStrings);
begin
  if FDateList.IndexOf(FormatDateTime('ddmmyyyy', ADate)) <> -1 then begin
    VInformation.Assign(TStringList(FDateList.Objects[FDateList.IndexOf(FormatDateTime('ddmmyyyy', ADate))]));
  end;
end;

procedure TformCalendar.IWAppFormCreate(Sender: TObject);
var
  f, g: integer;
  ADate: TDateTime;
  AList: TStringList;
  AStrDate: string;
begin
  FDateList := TStringList.Create;
  AList := TStringList.Create;
  AList.Add('Cat to vet');
  AList.Add('Dog to dogpund');
  AList.Add('Get haircut');
  AList.Add('See IRS inspector');
  AList.Add('Wash car');
  AList.Add('See "The two towers"');
  AList.Add('Jim''s party');
  AList.Add('Phone mother');
  AList.Add('Jury duty');
  AList.Add('Aerobic');
  AList.Add('Wash cat');
  AList.Add('Wash dog');
  AList.Add('Get new dog');
  AList.Add('Paint cat red');
  AList.Add('Trip to Mexic');
  AList.Add('Shot noisy neighbour');
  AList.Add('TIWCalendar deadline');
  AList.Add('Get cat food');
  AList.Add('Get dog food');
  AList.Add('Car to garage');
  AList.Add('Bank - house loan');
  AList.Add('Court - divorce');
  AList.Add('Plumber day');
  AList.Add('Kid''s birthday');
  AList.Add('Mom''s birthday');
  AList.Add('Wife''s birthday');
  AList.Add('Pay day');

  Randomize;
  for f := 0 to AList.Count - 1 do begin
    g := Random(60) - Random(60);
    ADate := Now - g;
    AStrDate := FormatDateTime('ddmmyyyy', ADate);
    if FDateList.IndexOf(AStrDate) = -1 then begin
      FDateList.AddObject(AStrDate, TStringList.Create);
    end;
    TStringList(FDateList.Objects[FDateList.IndexOf(AStrDate)]).Add(AList.Strings[f]);
  end;
  AList.Free;
  //Never rely on the StartDate which is set automatically during creation, esp. if you have
  //events assigned (such as OnDateChange) which rely on additional resources. An
  // StringList holds the events in this demo, which is not initialized when the
  //Calendar is created.
  DemoDiary.StartDate := now;
end;

procedure TformCalendar.IWAppFormDestroy(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to FDateList.Count - 1 do begin
    FDateList.Objects[i].Free;
  end;
  FDateList.Free;
end;

procedure TformCalendar.DemoDiaryDateChange(ADate: TDateTime);
begin
  if FDateList.IndexOf(FormatDateTime('ddmmyyyy', ADate)) <> -1 then begin
    lbActivities.Items.Assign(TStringList(FDateList.Objects[FDateList.IndexOf(FormatDateTime('ddmmyyyy', ADate))]));
    //Important: after changing the items of IWListbox, you need to mark the control to be refreshed in umPartial
    lbActivities.DoRefreshControl := true;
  end
  else begin
    lbActivities.Items.Clear;
  end;

  DateText.Caption := Format('Activities for %s', [FormatDateTime('mmm dd, yyyy', ADate)]);
  edActivity.Text := '';
  lbActivities.ItemIndex := -1;
end;

procedure TformCalendar.lbActivitiesChange(Sender: TObject);
begin
  edActivity.Text := lbActivities.Text;
  FOriginalText := edActivity.Text;
end;

procedure TformCalendar.IWButton1Click(Sender: TObject);
var
  AStrDate: string;
begin
  if edActivity.Text <> '' then begin
    // Add
    AStrDate := FormatDateTime('ddmmyyyy', DemoDiary.SelectedDate);
    if FDateList.IndexOf(AStrDate) = -1 then begin
      FDateList.AddObject(AStrDate, TStringList.Create);
    end;
    TStringList(FDateList.Objects[FDateList.IndexOf(AStrDate)]).Add(edActivity.Text);
    DemoDiaryDateChange(DemoDiary.SelectedDate);
  end;
end;

procedure TformCalendar.IWButton3Click(Sender: TObject);
var
  i: integer;
begin
  // Delete
  i := FDateList.IndexOf(FormatDateTime('ddmmyyyy', DemoDiary.SelectedDate));
  if i >= 0 then begin
    if TStringList(FDateList.Objects[i]).IndexOf(FOriginalText) > -1 then
      TStringList(FDateList.Objects[i]).Delete(TStringList(FDateList.Objects[i]).IndexOf(FOriginalText));
    DemoDiaryDateChange(DemoDiary.SelectedDate);
  end;
end;

procedure TformCalendar.IWButton2Click(Sender: TObject);
var
  i: integer;
begin
  if edActivity.Text <> '' then begin
    // Modify
    i := FDateList.IndexOf(FormatDateTime('ddmmyyyy', DemoDiary.SelectedDate));
    if TStringList(FDateList.Objects[i]).IndexOf(FOriginalText) > -1 then
      TStringList(FDateList.Objects[i]).Strings[TStringList(FDateList.Objects[i]).IndexOf(FOriginalText)] := edActivity.Text;
    DemoDiaryDateChange(DemoDiary.SelectedDate);
  end;
end;

end.

