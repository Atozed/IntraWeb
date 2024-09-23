unit Unit7;


interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompFileUploader, IWCompLabel, Data.DB, Datasnap.DBClient, IWCompButton;

type
  TIWForm7 = class(TIWAppForm)
    IWFileUploader1: TIWFileUploader;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWFileUploader2: TIWFileUploader;
    IWLabel3: TIWLabel;
    IWFileUploader3: TIWFileUploader;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1FileName: TStringField;
    ClientDataSet1FileSize: TIntegerField;
    ClientDataSet1FileContent: TBlobField;
    IWLabel4: TIWLabel;
    IWFileUploader4: TIWFileUploader;
    IWLabel5: TIWLabel;
    IWFileUploader5: TIWFileUploader;
    btnSelect: TIWButton;
    btnUpload: TIWButton;
    IWFileUploader6: TIWFileUploader;
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWFileUploader2AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWFileUploader3AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWButton2AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWFileUploader5AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo;

procedure PercorreDataSet(ds: TDataSet);
var
  Bookmark: TBookmark;
begin
  Bookmark := ds.GetBookmark;
  try
    ds.DisableControls;
    ds.First;
    while not ds.EOF do
    begin
       // faça o que vc quer fazer aqui
      ds.Next;
    end;
    ds.GotoBookmark(Bookmark);
  finally
    ds.EnableControls;
    ds.FreeBookmark(Bookmark);
  end;
end;


procedure TIWForm7.IWAppFormCreate(Sender: TObject);
begin
  // Create the DataSet so we can use it later
  ClientDataSet1.CreateDataSet;
end;

procedure TIWForm7.IWButton1AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  IWFileUploader6.SelectFile;
end;

procedure TIWForm7.IWButton2AsyncClick(Sender: TObject; EventParams:
    TStringList);
begin
  IWFileUploader6.StartUpload;
end;

procedure TIWForm7.IWFileUploader1AsyncUploadCompleted(Sender: TObject;
  var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
var
  CurDir: string;
begin
  // get the app path
  CurDir := TIWAppInfo.GetAppPath;

  // save in the same application directory, with the same name of the original file. Overwrite if it already exists.
  IWFileUploader1.SaveToFile(FileName, CurDir + FileName, True);

  // Inform IWFileUploader that we are taking care of file saving ourselves
  SaveFile := False;
end;

procedure TIWForm7.IWFileUploader2AsyncUploadCompleted(Sender: TObject;
  var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
begin
  // here we just inform the new name for the file. IWFileUploader will take care of the rest.
  // The file will be saved inside the user cache directory (WebApplication.UserCacheDir)
  FileName := 'MyUploadedFile.dat';
end;

procedure TIWForm7.IWFileUploader3AsyncUploadCompleted(Sender: TObject;
  var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
var
  MS: TMemoryStream;
  MimeType: string;
begin
  MimeType := TIWFileUploader.CheckMimeType;  // this needs IW 15.1.6 or later. If using other version, comment this line to build it


  // Create any TStream descendant
  MS := TMemoryStream.Create;
  try
    // Save the file content to that stream
    IWFileUploader3.SaveToStream(FileName, MS);
    // inform IWFileUploader that we are handling it ourselves. No need to save the file
    SaveFile := False;
    // do whatever you want here with the TStream containing the file. For instance, save to the ClientDataSet
    with ClientDataSet1 do begin
      Append;
      FieldByName('FileName').AsString := FileName;
      FieldByName('FileSize').AsInteger := MS.Size;
      // set to the start of the Stream
      MS.Position := 0;
      // save to the blob field
      TBlobField(FieldByName('FileContent')).LoadFromStream(MS);
      Post;
    end;
  finally
    // Release the stream
    MS.Free;
  end;
end;

// Shared between IWFileUploader5 and IWFileUploader6
procedure TIWForm7.IWFileUploader5AsyncUploadCompleted(Sender: TObject;
  var DestPath, FileName: string; var SaveFile, Overwrite: Boolean);
var
  CurDir: string;
  MimeType: string;
begin
  if not (Sender is TIWFileUploader) then
    Exit;

  // get the app path
  CurDir := TIWAppInfo.GetAppPath;

  MimeType := TIWFileUploader.CheckMimeType;  // this needs IW 15.1.6 or later. If using other version, comment this line to build it

  // save in the same application directory, with the same name of the original file. Overwrite if it already exists.
  TIWFileUploader(Sender).SaveToFile(FileName, CurDir + FileName, True);

  // Inform IWFileUploader that we are taking care of file saving ourselves
  SaveFile := False;
end;

initialization
  TIWForm7.SetAsMainForm;

end.
