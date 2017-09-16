unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompJQueryWidget, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompEdit, IWCompLabel, IWCompMemo;

type
  TIWForm1 = class(TIWAppForm)
    IWEdit1: TIWEdit;
    JQuery: TIWJQueryWidget;
    lbDate: TIWLabel;
    IWMemo1: TIWMemo;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWEdit1AsyncChange(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  jQuery.OnReady.Text := '$(''.cal'').datepicker();';
end;

procedure TIWForm1.IWEdit1AsyncChange(Sender: TObject;
  EventParams: TStringList);
begin
  lbDate.Caption := 'Selected date: ' + IWEdit1.Text;
end;

initialization
  TIWForm1.SetAsMainForm;

end.
