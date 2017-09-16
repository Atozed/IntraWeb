unit Unit7;


interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompFileUploader, IWCompLabel, Data.DB, Datasnap.DBClient;

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
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWFileUploader2AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWFileUploader3AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWAppFormCreate(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses
  IW.Common.AppInfo;

procedure TIWForm7.IWAppFormCreate(Sender: TObject);
begin
  // Create the DataSet so we can use it later
  ClientDataSet1.CreateDataSet;
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
begin
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

initialization
  TIWForm7.SetAsMainForm;

end.
