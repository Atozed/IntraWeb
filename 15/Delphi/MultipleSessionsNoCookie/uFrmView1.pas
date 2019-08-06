unit uFrmView1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox, IWCompLabel, IWCompJQueryWidget, IWCompGradButton,
  IWHTMLControls;

type
  TFrmView1 = class(TIWAppForm)
    tblContainer1: TIWLabel;
    IWGradButton1: TIWGradButton;
    IWURL1: TIWURL;
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

procedure TFrmView1.IWAppFormRender(Sender: TObject);
begin
  PageContext.AddLinkFile('https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css');
  PageContext.AddScriptFile('https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js');
  PageContext.AddToInitProc('$("#tbl1").DataTable();');
end;

procedure TFrmView1.IWAppFormCreate(Sender: TObject);
var
  url: string;
begin
  tblContainer1.Caption := TIWTextFileReader.ReadAllText(TIWAppInfo.GetAppPath + 'tbl1.txt');

  url := 'table2/?UID=' + UserSession.UserId;
  url := TURL.Concat(WebApplication.ApplicationURL, url);
  IWURL1.URL := url;
end;

procedure TFrmView1.IWGradButton1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  frm: TPersistentClass;
begin
  frm := FindClass('TFrmView2');
  if Assigned(frm) then
  begin
    TIWAppFormClass(frm).Create(WebApplication).Show;
    Release;
  end;
end;

procedure TFrmView1.IWGradButton2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GoToURL('/table2');
end;

initialization
  RegisterClass(TFrmView1);

end.
