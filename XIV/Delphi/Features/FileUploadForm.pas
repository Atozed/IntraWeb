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

end.

