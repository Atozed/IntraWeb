unit Unit34;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWjQPageControl, Vcl.Controls, Vcl.Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWjQAccordion, IWCompButton, IWCompMemo,
  IWCompLabel, IWCompListbox;

type
  TIWForm34 = class(TIWAppForm)
    IWjQPageControl2: TIWjQPageControl;
    IWMemo1: TIWMemo;
    IWComboBox1: TIWComboBox;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWjQPageControl2AsyncBeforePageChange(Sender: TObject;
      NewPageIndex: Integer; var AllowChange: Boolean);
    procedure IWjQPageControl2AsyncPageChanged(Sender: TObject;
      TabIndex: Integer);
    procedure IWComboBox1AsyncChange(Sender: TObject; EventParams: TStringList);
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
  Page: TIWjQTabPage;
begin
  // Create 3 new pages and add their captions to a ComboBox
  Page := IWjQPageControl2.CreatePage('First page');
  IWComboBox1.Items.Add(Page.Caption);

  Page := IWjQPageControl2.CreatePage('Second page');
  IWComboBox1.Items.Add(Page.Caption);

  Page := IWjQPageControl2.CreatePage('Third page');
  IWComboBox1.Items.Add(Page.Caption);

  // ActivePage is used here to set the current active page
  IWjQPageControl2.ActivePage := IWjQPageControl2.Pages[0];
end;

procedure TIWForm34.IWjQPageControl2AsyncBeforePageChange(Sender: TObject;
  NewPageIndex: Integer; var AllowChange: Boolean);
begin
  Log('OnAsyncBeforePageChange triggered. NewPageIndex = ' + IntToStr(NewPageIndex));
end;

procedure TIWForm34.IWjQPageControl2AsyncPageChanged(Sender: TObject;
  TabIndex: Integer);
begin
  Log('OnAsyncPageChanged triggered. ActivePageIndex = ' + IntToStr(TabIndex));
end;

procedure TIWForm34.IWComboBox1AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  // ActivePageIndex is used here to set the current active page
  if IWComboBox1.ItemIndex >= 0 then
    IWjQPageControl2.ActivePageIndex := IWComboBox1.ItemIndex;
end;

initialization
  TIWForm34.SetAsMainForm;

end.
