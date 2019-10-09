//
unit Combobox;
{PUBDIST}

interface

uses
  IWAppForm, Classes, IWControl,
  {$IFDEF Linux}QForms,{$ELSE}Forms,{$ENDIF}
  {$IFDEF Linux}QControls,{$ELSE}Controls,{$ENDIF}
  IWHTMLControls, IWCompLabel, IWCompText, IWCompCheckbox, IWCompListbox,
  IWCompExtCtrls, IWCompRectangle, IWRegion, MenuFrame, IWContainer,
  IWBaseControl, IWVCLBaseContainer, IWVCLBaseControl, IWHTMLContainer,
  IWBaseHTMLControl, IWHTML40Container, IWCompButton, IWCompGrids,
  IWCompCalendar;

type
  TformComboboxes = class(TIWAppForm)
    cmboNumbers: TIWComboBox;
    lablNumber: TIWLabel;
    IWLabel1: TIWLabel;
    chckCheckbox: TIWCheckBox;
    lablCheckbox: TIWLabel;
    IWCheckBox1: TIWCheckBox;
    IWRectangle1: TIWRectangle;
    IWRegion1: TIWRegion;
    IWLabel2: TIWLabel;
    IWRadioGroup1: TIWRadioGroup;
    IWLabel3: TIWLabel;
    IWRadioGroup2: TIWRadioGroup;
    IWText2: TIWText;
    IWCheckBox2: TIWCheckBox;
    IWLabel4: TIWLabel;
    framMenu1: TframMenu;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    IWButton3: TIWButton;
    IWCalendar1: TIWCalendar;
    procedure cmboNumbersChange(Sender: TObject);
    procedure chckCheckboxClick(Sender: TObject);
    procedure IWCheckBox2Click(Sender: TObject);
    procedure IWCheckBox1Click(Sender: TObject);
    procedure IWAppFormCheckFormId(Sender: TObject; var Allow: Boolean);
  public
  end;

implementation
{$R *.dfm}

procedure TformComboboxes.cmboNumbersChange(Sender: TObject);
begin
  if cmboNumbers.ItemIndex = -1 then
    lablNumber.Caption := cmboNumbers.NoSelectionText
  else
    lablNumber.Caption := cmboNumbers.Items[cmboNumbers.ItemIndex];
end;

procedure TformComboboxes.chckCheckboxClick(Sender: TObject);
begin
  if chckCheckbox.Checked then begin
    lablCheckbox.Caption := 'Checked';
  end else begin
    lablCheckbox.Caption := 'Unchecked';
  end;
end;

procedure TformComboboxes.IWCheckBox2Click(Sender: TObject);
begin
  IWRegion1.Visible := IWCheckbox2.Checked;
end;

procedure TformComboboxes.IWCheckBox1Click(Sender: TObject);
begin
  if IWCheckBox1.Checked then
    IWCheckBox1.Caption := 'Cool Checkbox - Checked'
  else
    IWCheckBox1.Caption := 'Cool Checkbox - Unchecked';
end;

procedure TformComboboxes.IWAppFormCheckFormId(Sender: TObject;
  var Allow: Boolean);
begin
//  if Allow then begin
//    WebApplication.ShowMessage('Allow');
//  end;
end;

end.
