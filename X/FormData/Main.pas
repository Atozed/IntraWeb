unit Main;

{PUBDIST}

interface

uses
  IWAppForm, IWApplication, IWTypes, IWCompButton, IWCompEdit, Classes,
  Controls, IWControl, IWCompLabel, Dialog, IWHTMLControls, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl;

type
  TformMain = class(TIWAppForm)
    IWLabel1: TIWLabel;
    editText: TIWEdit;
    butnOk: TIWButton;
    IWLink1: TIWLink;
    procedure butnOkClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
  public
    FDialogForm: TformDialog;
  end;

implementation
{$R *.dfm}

uses
  SysUtils;

procedure TformMain.butnOkClick(Sender: TObject);
var
  s: string;
begin
  s := Trim(editText.Text);
  editText.Text := '';
  if s = '' then begin
    WebApplication.ShowMessage('Please enter some text.');
  end else begin
    with FDialogForm do begin
      IWMemo1.Lines.Add(s);
      Inc(FCount);
      Show;
    end;
  end;
end;

procedure TformMain.IWAppFormCreate(Sender: TObject);
begin
  FDialogForm := TformDialog.Create(WebApplication);
end;

procedure TformMain.IWLink1Click(Sender: TObject);
begin
  WebApplication.Terminate('Good bye!');
end;

initialization
  TformMain.SetAsMainForm;
end.
