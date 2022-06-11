unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompCheckbox,
  Unit1, IWCompButton, IWCompEdit, IWHTMLControls, IWCompListbox;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLink1: TIWLink;
    IWEdit1: TIWEdit;
    IWListbox1: TIWListbox;
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  // You can switch forms both from Async and from Sync events.
  // However, and this is important, if you want the state of the controls of the form
  // to be preserved (e.g. the items that you added to the ListBox),
  // in case of a user uses the back button, you should change forms
  // via SYNC events (OnClick instead of OnAsyncClick, etc).
  WebApplication.GoToURL('/Form3');
end;

procedure TIWForm2.IWLink1Click(Sender: TObject);
begin
  if Trim(IWEdit1.Text) <> '' then
  begin
    IWListBox1.Items.Add(IWEdit1.Text);
    IWEdit1.Clear;
    IWEdit1.SetFocus;
  end
  else
    WebApplication.ShowMessage('Text can''t be empty');
end;

initialization
  TIWForm2.SetURL('', 'SecondForm');

end.
