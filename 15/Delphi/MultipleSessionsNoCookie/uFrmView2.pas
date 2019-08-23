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
    btn3: TIWGradButton;
    btn4: TIWGradButton;
    procedure IWAppFormRender(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btn3AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure btn4AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWAppFormDestroy(Sender: TObject);
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

procedure TFrmView2.btn3AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  frmClass: TPersistentClass;
  frm: TIWAppForm;
begin
  // use existing instance
  frm := WebApplication.FindFormByName('TFrmView1') as TIWAppForm;
  if Assigned(frm) then
  begin
    frm.Show;
    Exit; // we are done
  end;

  // if there is no instance of this class, create one
  frmClass := FindClass('TFrmView1');
  if Assigned(frmClass) then
  begin
    TIWAppFormClass(frmClass).Create(WebApplication).Show;
  end;
end;

procedure TFrmView2.btn4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GoToURL('/table1');
end;

procedure TFrmView2.IWAppFormDestroy(Sender: TObject);
begin
//
end;

initialization
  RegisterClass(TFrmView2);

end.
