//
unit FileUploadForm;

interface

uses
  IWAppForm, IWApplication,
  SysUtils, Classes,
  IWControl, IWHTMLControls, IWCompButton,
  IWCompEdit, IWCompLabel, IWCompText, MenuFrame, IWBaseControl,
  IWVCLBaseControl, IWBaseHTMLControl, IWCompFileUploader, Controls,
  Forms;

type
  TformFileUploadDemo = class(TIWAppForm)
    IWText1: TIWText;
    framMenu1: TframMenu;
    IWFileUploader1: TIWFileUploader;
    procedure IWFileUploader1AsyncUploadCompleted(Sender: TObject; var DestPath,
      FileName: string; var SaveFile, Overwrite: Boolean);
    procedure IWAppFormCreate(Sender: TObject);
  protected
    FLastName: string;
  public
  end;

implementation

uses IWForm, IWGlobal, IW.Common.AppInfo;

{$R *.dfm}

procedure TformFileUploadDemo.IWFileUploader1AsyncUploadCompleted(
  Sender: TObject; var DestPath, FileName: string; var SaveFile,
  Overwrite: Boolean);
begin
  // save in the user cache directory with the same name of the original file. Overwrite if it already exists.
  // Each user directory is exclusive. Files won't be overwritten by other users
  IWFileUploader1.SaveToFile(WebApplication.UserCacheDir, WebApplication.UserCacheDir + FileName, True);

  // Inform IWFileUploader that we are taking care of file saving ourselves
  SaveFile := False;
end;

procedure TformFileUploadDemo.IWAppFormCreate(Sender: TObject);
begin
  IWFileUploader1.AutoSavePath := WebApplication.UserCacheDir;
end;

end.

