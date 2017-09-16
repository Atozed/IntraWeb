unit Unit10;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Data.DB,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWHTMLControls, IWCompLabel, IWCompListbox;

type
  TIWForm10 = class(TIWAppForm)
    IWURLWindow1: TIWURLWindow;
    IWComboBox1: TIWComboBox;
    IWLabel1: TIWLabel;
    procedure IWComboBox1Change(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IWGlobal, IW.Content.Handlers, IWMimeTypes, UserSessionUnit;

procedure TIWForm10.IWComboBox1Change(Sender: TObject);
var
  ReportNo: Integer;
begin
  ReportNo := StrToIntDef(IWComboBox1.Items.ValueFromIndex[IWComboBox1.ItemIndex], 0);
  if ReportNo > 0 then begin
    // set the URL for the report
    IWURLWindow1.URI := WebApplication.SessionUrlBase + 'Reports.html?report=' + IntToStr(ReportNo);
  end;
end;

initialization
  TIWForm10.SetAsMainForm;

end.
