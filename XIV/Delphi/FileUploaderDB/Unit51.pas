unit Unit51;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompLabel, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompFileUploader, Data.DB,
  Datasnap.DBClient, IWCompExtCtrls, IWDBExtCtrls, IWCompButton;

type
  TIWForm51 = class(TIWAppForm)
    IWFileUploader1: TIWFileUploader;
    IWLabel1: TIWLabel;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1FileName: TStringField;
    ClientDataSet1FileSize: TIntegerField;
    ClientDataSet1FileContent: TBlobField;
    DataSource1: TDataSource;
    IWDBImage1: TIWDBImage;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath, FileName: string;
      var SaveFile, Overwrite: Boolean);
    procedure IWButton1Click(Sender: TObject);
    procedure IWFileUploader1AsyncUploadSuccess(Sender: TObject; EventParams: TStringList);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm51.IWAppFormCreate(Sender: TObject);
begin
  ClientDataSet1.CreateDataSet;
end;

procedure TIWForm51.IWButton1Click(Sender: TObject);
begin
//
end;

procedure TIWForm51.IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath,
  FileName: string; var SaveFile, Overwrite: Boolean);
var
  MS: TMemoryStream;
begin
  // Create any TStream descendant
  MS := TMemoryStream.Create;
  try
    // Save the file content to that stream
    IWFileUploader1.SaveToStream(FileName, MS);
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

procedure TIWForm51.IWFileUploader1AsyncUploadSuccess(Sender: TObject; EventParams: TStringList);
var
  js: string;
begin
  // this will force the page reload, so the image in IWDBImage control will be rendered
  js := 'location.reload(true);';
  WebApplication.CallBackResponse.AddJavaScriptToExecuteAsCDATA(js);
end;

initialization
  TIWForm51.SetAsMainForm;

end.
