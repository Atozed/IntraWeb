unit uMainForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompGradButton, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWHTMLControls;

type
  TMainForm = class(TIWAppForm)
    IWURL1: TIWURL;
    IWGradButton1: TIWGradButton;
    procedure IWGradButton1AsyncClick(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo, IWAppCache, IW.Common.System, IWMimeTypes, IW.CacheStream;

procedure TMainForm.IWGradButton1AsyncClick(Sender: TObject; EventParams: TStringList);
var
  LSourceFileName,
  LDestFileName,
  Url: string;
begin
  // wait 2 seconds before generating the link
  Sleep(2000);
  // this is the source file
  LSourceFileName := TIWAppInfo.GetAppPath + 'myfiles\sample.zip';
  // this is the destination file name. This file will receive a random file name, by the cache system
  LDestFileName := TIWAppCache.NewTempFileName('.zip');
  // copy the source to destination. Source file will be kept in place
  FileCopy(LSourceFileName, LDestFileName);
  // add the file copied to cache. This file will be deleted when session terminates (cache type = ctSession)
  Url := TIWAppCache.AddFileToCache(WebApplication, LDestFileName, TIWMimeTypes.GetAsString(mtZip), ctSession);
  // set URL of TIWUrl control
  IWUrl1.URL := Url;
  // make IWURL control Visible
  IWUrl1.Visible := True;
end;

initialization
  TMainForm.SetAsMainForm;

end.
