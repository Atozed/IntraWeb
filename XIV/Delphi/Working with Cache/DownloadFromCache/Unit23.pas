unit Unit23;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompGradButton;

type
  TIWForm23 = class(TIWAppForm)
    btnCreate: TIWGradButton;
    btnDownload: TIWGradButton;
    procedure btnCreateAsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure btnDownloadClick(Sender: TObject);
  private
    FContentType: string;
    FFileUrl: string;
    FFileName: string;
  end;

implementation

{$R *.dfm}

uses
  IWGlobal, IW.Common.AppInfo, IW.Common.System, IWAppCache, IW.CacheStream, IWMimeTypes;

procedure TIWForm23.btnCreateAsyncClick(Sender: TObject;
  EventParams: TStringList);
var
  FileContent: TStringList;
  CacheStream: TCacheStream;
  LFileName: string;
begin
  FFileUrl := '';
  FContentType := TIWMimeTypes.GetAsString(mtTXT);
  // this part creates a file with some content. We are just creating a text file here. It could be anything
  FileContent := TStringList.Create;
  try
    FileContent.Add('This is a sample file');
    FileContent.Add('created to demonstrate how to');
    FileContent.Add('create and download a file using');
    FileContent.Add('IntraWeb cache system');
    LFileName := MakeSystemTempFile;
    FileContent.SaveToFile(LFileName);
  finally
    FileContent.Free;
  end;

  // Add file to the cache
  FFileUrl := TIWAppCache.AddFileToCache(WebApplication, LFileName, FContentType, ctSession);
  FFileName := ExtractFileName(LFileName);

  btnDownload.Enabled := True;
end;

procedure TIWForm23.btnDownloadClick(Sender: TObject);
begin
  WebApplication.SendFile(gSC.CacheDir + FFileName, True, FContentType, 'SampleFile.txt');
end;

initialization
  TIWForm23.SetAsMainForm;

end.
