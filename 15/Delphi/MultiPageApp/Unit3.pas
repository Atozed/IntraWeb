unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWHTMLControls, IWCompButton;

type
  TIWForm3 = class(TIWAppForm)
    IWLink1: TIWLink;
    IWEdit1: TIWEdit;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

procedure TIWForm3.IWButton1Click(Sender: TObject);
begin
  WebApplication.GoToURL('/MainForm');
end;

procedure TIWForm3.IWButton2Click(Sender: TObject);
begin
  WebApplication.GoToURL('/SecondForm');
end;

procedure TIWForm3.IWLink1AsyncClick(Sender: TObject; EventParams: TStringList);
begin
  WebApplication.ShowMessage('Hello from ' + Name + ': ' + IWEdit1.Text);
end;

initialization
  TIWForm3.SetURL('', 'Form3');

end.
