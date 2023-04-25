unit Unit34;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWjQAccordion, IWCompButton, IWCompMemo,
  IWCompLabel, IWCompListbox;

type
  TIWForm34 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWComboBox1: TIWComboBox;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWjQAccordion1: TIWjQAccordion;
    btnAddSection: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWComboBox1AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWjQAccordion1AsyncBeforeSectionChange(Sender: TObject;
      NewSectionIndex: Integer; var AllowChange: Boolean);
    procedure IWjQAccordion1AsyncSectionChanged(Sender: TObject;
      SectionIndex: Integer);
    procedure btnAddSectionAsyncClick(Sender: TObject;
      EventParams: TStringList);
  private
    procedure Log(const s: string);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm34.Log(const s: string);
begin
  IWMemo1.Lines.Add(s);
end;

procedure TIWForm34.IWAppFormCreate(Sender: TObject);
var
  Section: TIWjQSection;
begin
  // Create 3 new sections and add their captions to a ComboBox
  Section := IWjQAccordion1.CreateSection('First Section');
  IWComboBox1.Items.Add(Section.Caption);
  Section := IWjQAccordion1.CreateSection('Second Section');
  IWComboBox1.Items.Add(Section.Caption);
  Section := IWjQAccordion1.CreateSection('Third Section');
  IWComboBox1.Items.Add(Section.Caption);
  // ActiveSection is used here to set the current active section
  IWjQAccordion1.ActiveSection := IWjQAccordion1.Sections[0];
end;

procedure TIWForm34.IWjQAccordion1AsyncBeforeSectionChange(Sender: TObject;
  NewSectionIndex: Integer; var AllowChange: Boolean);
begin
  Log('OnAsyncBeforeSectionChange triggered. NewSectionIndex = ' + IntToStr(NewSectionIndex));
  AllowChange := False;
end;

procedure TIWForm34.IWjQAccordion1AsyncSectionChanged(Sender: TObject;
  SectionIndex: Integer);
begin
  Log('OnAsyncSectionChanged triggered. ActiveSectionIndex = ' + IntToStr(SectionIndex));
end;

procedure TIWForm34.IWComboBox1AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  // ActivePageIndex is used here to set the current active page
  if IWComboBox1.ItemIndex >= 0 then
    IWjQAccordion1.ActiveSectionIndex := IWComboBox1.ItemIndex;
end;

procedure TIWForm34.btnAddSectionAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  Section: TIWjQSection;
begin
   Section := IWjQAccordion1.CreateSection('Section ' + IntToStr(IWjQAccordion1.SectionCount + 1));
  IWComboBox1.Items.Add(Section.Caption);
end;

initialization
  TIWForm34.SetAsMainForm;
end.
