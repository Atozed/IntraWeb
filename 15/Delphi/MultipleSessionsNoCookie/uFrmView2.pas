unit uFrmView2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  IWCompGradButton, IWHTMLControls;

type
  TFrmView2 = class(TIWAppForm)
    tblContainer2: TIWLabel;
    IWURL1: TIWURL;
    IWGradButton1: TIWGradButton;
    IWGradButton2: TIWGradButton;
    procedure IWAppFormRender(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWGradButton1AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWGradButton2AsyncClick(Sender: TObject;
      EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo, IW.Common.FileStream, IWURL, ServerController;

procedure TFrmView2.IWAppFormRender(Sender: TObject);
begin
  PageContext.AddLinkFile('https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css');
  PageContext.AddScriptFile('https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js');
  PageContext.AddToInitProc('$("#tbl2").DataTable();');
end;

procedure TFrmView2.IWAppFormCreate(Sender: TObject);
var
  url: string;
begin
  tblContainer2.Caption := TIWTextFileReader.ReadAllText(TIWAppInfo.GetAppPath + 'tbl2.txt');

  url := 'table1/?UID=' + UserSession.UserId;
  url := TURL.Concat(WebApplication.ApplicationURL, url);
  IWURL1.URL := url;
end;

procedure TFrmView2.IWGradButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  frm: TPersistentClass;
begin
  frm := FindClass('TFrmView1');
  if Assigned(frm) then
  begin
    TIWAppFormClass(frm).Create(WebApplication).Show;
    Release;
  end;
end;

procedure TFrmView2.IWGradButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GoToURL('/table1');
end;

initialization
  RegisterClass(TFrmView2);

end.
