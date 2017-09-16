unit UserSessionUnit;

{
  This is a DataModule where you can add components or declare fields that are specific to 
  ONE user. Instead of creating global variables, it is better to use this datamodule. You can then
  access the it using UserSession.
}
interface

uses
  IWUserSessionBase, SysUtils, Classes;

type
  TIWUserSession = class(TIWUserSessionBase)
    procedure IWUserSessionBaseCreate(Sender: TObject);
  private
    { Private declarations }
    FImage1Url: string;
    FImage2Url: string;
  public
    { Public declarations }
    property Image1Url: string read FImage1Url;
    property Image2Url: string read FImage2Url;
  end;

implementation

{$R *.dfm}
{$R CacheFiles.res} // <- Add the images as resources to our project. To build, just run Build_resources.bat

uses
  Windows, IWAppCache, IW.CacheStream, IWMimeTypes;

procedure TIWUserSession.IWUserSessionBaseCreate(Sender: TObject);
var
  xResourceStream: TStream;
  xCacheStream: TCacheStream;
begin
  // Get the stream from the resources linked via CacheFile.res
  xResourceStream :=  TResourceStream.Create(HInstance, UpperCase('DEMO_IMAGE1'), RT_RCDATA);
  // Create a new cache stream, set the content type using TIWMimeTypes class. The url for the file is returned in FImage1Url
  TIWAppCache.NewCacheStream(WebApplication, TIWMimeTypes.GetAsString(mtPNG), ctSession, xCacheStream, FImage1Url);
  try
    xCacheStream.CopyFrom(xResourceStream, 0);   // copy the contents from the resource stream
  finally
    xResourceStream.Free;  // release the resource stream
    xCacheStream.Free;     // release the cache stream. Once we've already written the content, it is not necessary anymore
  end;

  // we may do the same thing using IWAppCache methods, like this:
  FImage2Url := TIWAppCache.ResourceToCacheFile(WebApplication, 'DEMO_IMAGE2', TIWMimeTypes.GetAsString(mtPNG), ctSession);
end;

end.
