unit Unit44;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton,
  IWCompMemo;

type
  TIWForm44 = class(TIWAppForm)
    IWButton1: TIWButton;
    IWMemo1: TIWMemo;
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormCreate(Sender: TObject);
  public
    procedure GetGeolocation(EventParams: TStringList);
  end;

implementation

{$R *.dfm}

procedure TIWForm44.IWAppFormCreate(Sender: TObject);
begin
  WebApplication.RegisterCallBack('GetGeolocation', GetGeolocation);
end;

procedure TIWForm44.IWButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  // In case you get an error here, replace it with:
  //WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA('SendGeolocation();');
  WebApplication.ExecuteJS('SendGeolocation();');
end;

procedure TIWForm44.GetGeolocation(EventParams: TStringList);
var
  status: Integer;
  latitude,
  longitude: string;
begin
  status := StrToIntDef(EventParams.Values['status'], -1);
  if status < 0 then begin
    IWMemo1.Lines.Add('Browser does not support geolocation API');
    Exit;
  end;

  case status of
    0: begin
         latitude := EventParams.Values['lat'];
         longitude := EventParams.Values['lon'];
          IWMemo1.Lines.Add('Position is: longitude ' + longitude + ', latitude ' + latitude);
       end;
    1: IWMemo1.Lines.Add('Error: The user denied permission to access their location');
    2: IWMemo1.Lines.Add('Error: The browser was unable to determine the user''s location');
    3: IWMemo1.Lines.Add('Error: The browser timed out while trying to determine the user''s location');
  else
    IWMemo1.Lines.Add('Error: Unspecified error, error code = ' + IntToStr(status));
  end;
end;

initialization
  TIWForm44.SetAsMainForm;

end.
