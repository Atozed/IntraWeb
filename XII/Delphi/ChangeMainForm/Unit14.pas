unit Unit14;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWURLMap;

type
  TIWForm14 = class(TIWAppForm)
    IWLabel1: TIWLabel;
  public
    procedure ExecuteForm; override;
  end;

implementation

{$R *.dfm}

uses
  Unit15, Unit16;

procedure TIWForm14.ExecuteForm;
var
  i: Integer;
begin
  inherited;
  i := Random(100);
  if i mod 2 = 0 then begin
    WebApplication.RedirectURL := '/mypath/MainForm1';
  end else begin
    WebApplication.RedirectURL := '/mypath/MainForm2';
  end;
end;

initialization
  Randomize();
  TIWURLMap.Add('/mypath/', 'MainForm1', TIWForm15);
  TIWURLMap.Add('/mypath/', 'MainForm2', TIWForm16);
  TIWForm14.SetAsMainForm;

end.
