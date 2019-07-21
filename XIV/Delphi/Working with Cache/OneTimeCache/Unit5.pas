unit Unit5;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompGradButton, IWCompLabel, Controls, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompMemo, IWHTMLControls, IWCompButton;

type
  TIWForm5 = class(TIWAppForm)
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    IWGradButton1: TIWGradButton;
    IWGradButton2: TIWGradButton;
    IWURLWindow1: TIWURLWindow;
    IWGradButton3: TIWGradButton;
    IWGradButton4: TIWGradButton;
    IWGradButton5: TIWGradButton;
    procedure IWGradButton1Click(Sender: TObject);
    procedure IWGradButton2Click(Sender: TObject);
    procedure IWGradButton3Click(Sender: TObject);
    procedure IWGradButton4AsyncClick(Sender: TObject;
      EventParams: TStringList);
    procedure IWGradButton5AsyncClick(Sender: TObject;
      EventParams: TStringList);
  public
    procedure SendPdfFileToURLWindow;
    procedure SendPdfStreamToURLWindow;
  end;

implementation

{$R *.dfm}

uses
  IWAppCache, IW.CacheStream, IW.Common.System, IW.Common.AppInfo, IWMimeTypes;

procedure TIWForm5.IWGradButton1Click(Sender: TObject);
var
  xFileName: string;
  xURL: string;
begin
  // get a new temp file name. This method only returns a file name, the file  is not created
  xFileName := TIWAppCache.NewTempFileName;
  // copy a sample pdf file to our new cache file. We are just simulating a pdf file creation
  FileCopy(TIWAppInfo.GetAppPath + 'sample.pdf', xFileName, True);
  // add the pdf file to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  xURL := TIWAppCache.AddFileToCache(Self, xFileName, TIWMimeTypes.GetAsString(mtPDF), ctOneTime);
  // open a new window with our PDF file
  WebApplication.NewWindow(xURL);
end;

procedure TIWForm5.IWGradButton2Click(Sender: TObject);
var
  xFileName: string;
  xURL: string;
begin
  // get a new temp file name. This method only returns a file name, the file  is not created
  xFileName := TIWAppCache.NewTempFileName;
  // copy a sample image file to our new cache file. We are just simulating a dynamic image file creation
  FileCopy(TIWAppInfo.GetAppPath + 'web1.jpg', xFileName, True);
  // add the image file to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  xURL := TIWAppCache.AddFileToCache(Self, xFileName, TIWMimeTypes.GetAsString(mtJPG), ctOneTime);
  // open a new window with our image file
  WebApplication.NewWindow(xURL);
end;

procedure TIWForm5.IWGradButton3Click(Sender: TObject);
begin
  SendPdfFileToURLWindow;
end;

procedure TIWForm5.IWGradButton4AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  SendPdfFileToURLWindow;
end;

procedure TIWForm5.IWGradButton5AsyncClick(Sender: TObject;
  EventParams: TStringList);
begin
  SendPdfStreamToURLWindow;
end;

procedure TIWForm5.SendPdfFileToURLWindow;
var
  xFileName: string;
  xURL: string;
begin
  // get a new temp file name. This method only returns a file name, the file  is not created
  xFileName := TIWAppCache.NewTempFileName;
  // copy a sample pdf file to our new cache file. We are just simulating a pdf file creation
  FileCopy(TIWAppInfo.GetAppPath + 'sample.pdf', xFileName, True);
  // add the pdf file to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  xURL := TIWAppCache.AddFileToCache(Self, xFileName, TIWMimeTypes.GetAsString(mtPDF), ctOneTime);
  // open a new window with our PDF file
  IWURLWindow1.URI := xURL;
end;

procedure TIWForm5.SendPdfStreamToURLWindow;
var
  xURL: string;
  xFileStream: TFileStream;
begin
  xFileStream := TFileStream.Create(TIWAppInfo.GetAppPath + 'sample.pdf', fmOpenRead);
  // add the pdf stream to the cache. cache type is defined as ctOneTime, i.e., the file will be deleted when served
  xURL := TIWAppCache.StreamToCacheFile(Self, xFileStream, TIWMimeTypes.GetAsString(mtPDF), ctOneTime);
  // open a new window with our PDF file
  IWURLWindow1.URI := xURL;
end;

initialization
  TIWForm5.SetAsMainForm;

end.


