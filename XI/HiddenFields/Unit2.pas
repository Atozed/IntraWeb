unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TIWForm2 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    procedure IWButton2Click(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWButton2Click(Sender: TObject);
var
  FieldValue: string;
begin
  FieldValue := WebApplication.Request.ContentFields.Values['MyHiddenField'];
  WebApplication.ShowMessage('MyHiddenField value is now: ' + FieldValue);
end;

initialization
  TIWForm2.SetAsMainForm;

end.
