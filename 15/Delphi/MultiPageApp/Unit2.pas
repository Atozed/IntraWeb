unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompCheckbox,
  Unit1, IWCompButton, IWCompEdit, IWHTMLControls, IWCompListbox, IWCompText;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWLink1: TIWLink;
    IWEdit1: TIWEdit;
    IWListbox1: TIWListbox;
    IWButton2: TIWButton;
    IWText1: TIWText;
    procedure IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm2.IWButton1Click(Sender: TObject);
begin
  // From version 15.2.58 you can switch forms both from Async and from Sync events.
  // IW will keep the server and the browser in sync when the back button is hit
  WebApplication.GoToURL('/Form3');
end;

procedure TIWForm2.IWButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GoToURL('/Form3');
end;

procedure TIWForm2.IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
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
