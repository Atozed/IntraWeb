unit Unit69;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox, IWCompLabel, IWCompMemo, IWCompButton,
  IWDBStdCtrls;

type
  TIWForm69 = class(TIWAppForm)
    IWComboBox1: TIWComboBox;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWComboBox2: TIWComboBox;
    IWMemo1: TIWMemo;
    IWComboBox3: TIWComboBox;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWComboBox4: TIWComboBox;
    IWButton1: TIWButton;
    IWLabel5: TIWLabel;
    IWComboBox5: TIWComboBox;
    procedure IWComboBox1Change(Sender: TObject);
    procedure IWComboBox2Change(Sender: TObject);
    procedure IWComboBox3AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWComboBox4AsyncChange(Sender: TObject; EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWComboBox5AsyncChange(Sender: TObject; EventParams: TStringList);
  private
    procedure LogCombo(Combo: TIWComboBox; const EventName: string);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm69.IWAppFormCreate(Sender: TObject);
begin
  with IWComboBox5 do begin
    Items.Add('English Item 1 "=" Value 1');
    Items.Add('Cyrilic неглегентур=тимеам доценди');
    Items.Add('Greek εοσ εθ πθταντ=πονδερθμ');
    Items.Add('Georgian მოვეთ ნომინათი= ფროფრიაე ჰის');
    Items.Add('Chinese 内作谷新東子=評関教落');
  end;
end;

procedure TIWForm69.IWButton1Click(Sender: TObject);
begin
//
end;

procedure TIWForm69.IWComboBox1Change(Sender: TObject);
begin
  LogCombo(IWComboBox1, 'OnChange');
end;

procedure TIWForm69.IWComboBox2Change(Sender: TObject);
begin
  LogCombo(IWComboBox2, 'OnChange');
end;

procedure TIWForm69.IWComboBox3AsyncChange(Sender: TObject; EventParams: TStringList);
begin
  LogCombo(IWComboBox3, 'OnAsyncChange');
end;

procedure TIWForm69.IWComboBox4AsyncChange(Sender: TObject; EventParams: TStringList);
begin
  LogCombo(IWComboBox4, 'OnAsyncChange');
end;

procedure TIWForm69.IWComboBox5AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  LogCombo(IWComboBox5, 'OnAsyncChange');
end;

procedure TIWForm69.LogCombo(Combo: TIWComboBox; const EventName: string);
begin
  IWMemo1.Lines.Add(Combo.Name + '.' + EventName + ':' + #13#10 +
                    '  ItemIndex -> ' + IntToStr(Combo.ItemIndex) + #13#10 +
                    '  SelectedValue -> ' + Combo.SelectedValue);
end;

initialization
  TIWForm69.SetAsMainForm;

end.
