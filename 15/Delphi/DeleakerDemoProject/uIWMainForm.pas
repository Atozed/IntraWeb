unit uIWMainForm;

interface

uses
  Classes, SysUtils, Windows, IWAppForm, IWApplication, IWColor, IWTypes, udmMain, Data.DB, Datasnap.DBClient, IWCompEdit,
  IWDBStdCtrls, IWCompExtCtrls, IWDBExtCtrls, Vcl.Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl;

type
  TIWMainForm = class(TIWAppForm)
    IWDBNavigator1: TIWDBNavigator;
    IWDBImage1: TIWDBImage;
    IWDBEdit1: TIWDBEdit;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWAppFormDestroy(Sender: TObject);
  private
    Fdm: TdmMain;
    FileHandle: THandle;
    procedure CreateTestFile;
  public
  end;

implementation

{$R *.dfm}

procedure TIWMainForm.CreateTestFile;
const
  FILENAME = 'C:\temp\testfile.txt';
begin
  FileHandle := CreateFile(PChar(FILENAME), GENERIC_WRITE or GENERIC_READ, FILE_SHARE_WRITE or FILE_SHARE_READ, nil,
                            CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
  if FileHandle = INVALID_HANDLE_VALUE then
    raise Exception.CreateFmt('Error creating file "%s": %s', [FILENAME, SysErrorMessage(GetLastError)]);
end;

procedure TIWMainForm.IWAppFormCreate(Sender: TObject);
begin
  Fdm := TdmMain.Create(nil);
  // The fix for this leak would be only setting the owner of the data module, like this:
  //Fdm := TdmMain.Create(Self);
end;

procedure TIWMainForm.IWAppFormDestroy(Sender: TObject);
begin
// This is the fix for the first leak in the blog post
//  if FileHandle <> 0 then
//    CloseHandle(FileHandle);
end;

procedure TIWMainForm.IWAppFormRender(Sender: TObject);
begin
  if FileHandle = 0 then
    CreateTestFile;
end;

initialization
  TIWMainForm.SetAsMainForm;

end.
