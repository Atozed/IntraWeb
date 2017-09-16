unit Unit6;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompExtCtrls,
  IWCompLabel, IWCompMemo;

type
  TIWForm6 = class(TIWAppForm)
    IWImageFile1: TIWImageFile;
    IWMemo1: TIWMemo;
    IWLabel1: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}
{$R Images.res}  // this file contains one image that I want to show in my IWImageFile
                 // Check Images.rc and BuildImagesScript.bat files

uses
  IWAppCache,      // needed to use TIWAppCache class methods
  IW.CacheStream,  // needed because of ACacheType
  Windows;         // needed because of RT_RCDATA reference

function GetResourceStream(const AResName: string): TStream;
var
  xResName: string;
begin
  xResName := UpperCase(xResName);
  Result := TResourceStream.Create(0, PChar(AResName), RT_RCDATA);
end;

procedure TIWForm6.IWAppFormCreate(Sender: TObject);
var
  MyStream: TStream;
  HRef: string;
begin
  MyStream := GetResourceStream('MyImageFile');  // get the resource containing the image I want to show
  try
    // then create a new cache file and save the image to it. This cache file will be "alive" during the whole user sessoin (ACacheType = ctSession)
    // this function returns the URL to the cache file.
    // We could also use other methods of TIWAppCache
    HRef := TIWAppCache.StreamToCacheFile(Self, MyStream, 'image/gif', ctSession);
    // Set URL of IWImageFile1 with the value returned by TIWAppCache.StreamToCacheFile
    IWImageFile1.ImageFile.URL := HRef;
    IWLabel1.Caption := 'IWImageFile.ImageFile.URL = ' + HRef;
  finally
    MyStream.Free;
  end;
end;

initialization
  TIWForm6.SetAsMainForm;

end.
