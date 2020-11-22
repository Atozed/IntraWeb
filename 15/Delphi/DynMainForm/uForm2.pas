unit uForm2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompMemo;

type
  TIWForm2 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    procedure IWAppFormRender(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.HTTP.Request;

procedure TIWForm2.IWAppFormRender(Sender: TObject);
var
  i: Integer;
  Req: THttpRequest;
begin
  IWMemo1.Lines.Clear;
  Req := WebApplication.Request;

  IWMemo1.Lines.Add('QueryString: ' + Req.QueryString);

  for i := 0 to Req.QueryFields.Count - 1 do
  begin
    IWMemo1.Lines.Add('Field #' + IntToStr(i) + ': Name = ' + Req.QueryFields.Names[i] +
                      ', Value = ' + Req.GetQueryFieldValue(Req.QueryFields.Names[i]) );
  end;
end;

end.

