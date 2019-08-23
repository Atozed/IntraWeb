unit uFrmView1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox, IWCompLabel, IWCompJQueryWidget, IWCompGradButton,
  IWHTMLControls, IWCompEdit;

type
  TFrmView1 = class(TIWAppForm)
    tblContainer1: TIWLabel;
    btn1: TIWGradButton;
    IWURL1: TIWURL;
    btn2: TIWGradButton;
    procedure IWAppFormRender(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btn1AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure btn2AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWEdit1AsyncMouseOver(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormDestroy(Sender: TObject);
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

  RegisterCallBack('gotoRecord', procedure ()
                                 begin
                                   WebApplication.ShowMessage('gotoRecord');
                                 end);
end;

procedure TFrmView1.btn1AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  frmClass: TPersistentClass;
  frm: TIWAppForm;
begin
  // use existing instance
  frm := WebApplication.FindFormByName('TFrmView2') as TIWAppForm;
  if Assigned(frm) then
  begin
    frm.Show;
    Exit; // we are done
  end;

  // if there is no instance of this class, create one
  frmClass := FindClass('TFrmView2');
  if Assigned(frmClass) then
  begin
    TIWAppFormClass(frmClass).Create(WebApplication).Show;
  end;
end;

procedure TFrmView1.btn2AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  WebApplication.GoToURL('/table2');
end;

procedure TFrmView1.IWEdit1AsyncMouseOver(Sender: TObject;
  EventParams: TStringList);
begin
//
end;

procedure TFrmView1.IWAppFormDestroy(Sender: TObject);
begin
//
end;

initialization
  RegisterClass(TFrmView1);

end.
