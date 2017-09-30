unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompListbox,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWExtCtrls, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, IWCompText,
  Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer, IWHTML40Container,
  IWRegion, IWCompEdit;

type
  TfrmStore = class(TIWAppForm)
    lbModels: TIWListbox;
    TP: TIWTemplateProcessorHTML;
    IWText1: TIWText;
    IWRegion1: TIWRegion;
    ImageFile: TIWImageFile;
    IWFile1: TIWFile;
    IWButton1: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure lbModelsAsyncClick(Sender: TObject; EventParams: TStringList);
    procedure IWAppFormRender(Sender: TObject);
    procedure TPBeforeProcess(var VTemplate: TStream);
    procedure IWButton1Click(Sender: TObject);
  private
    procedure UpdateUserInterface;
  public
  end;

implementation

uses IWGlobal, StrUtils;

{$R *.dfm}


procedure TfrmStore.IWAppFormCreate(Sender: TObject);
var
  i: Integer;
  LSrch: TSearchRec;
  xPath: String;
begin
  xPath :=  gSC.ContentPath + 'images\';
  i := FindFirst(xPath + '*.*', faAnyFile, LSrch); try
    while i = 0 do begin
      if (LSrch.Attr and faDirectory) = 0 then
        lbModels.Items.Add(LSrch.Name);
      i := FindNext(LSrch);
    end;
  finally FindClose(LSrch); end;
  lbModels.ItemIndex := 0;
end;

procedure TfrmStore.IWAppFormRender(Sender: TObject);
begin
  UpdateUserInterface;
end;

procedure TfrmStore.IWButton1Click(Sender: TObject);
begin
  IWFile1.SaveToFile(gSC.ContentPath + IWFile1.Filename);
end;

procedure TfrmStore.lbModelsAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  UpdateUserInterface;
end;

procedure TfrmStore.TPBeforeProcess(var VTemplate: TStream);
var
  xStrStream: TStringStream;
  xDate: String;
  xNewStr: String;
  xFileName: String;
begin
  xStrStream := TStringStream.Create;
  try
    xStrStream.CopyFrom(VTemplate, VTemplate.Size);
    xNewStr := ReplaceStr(xStrStream.DataString, 'A_FILE_NAME', 'Files/logo.jpg');
    xStrStream.Seek(0, soFromBeginning );
    xStrStream.WriteString(xNewStr);
    xFileName := gSC.UserCacheDir + 'newtemplate.html';
    xStrStream.SaveToFile(xFileName);
    VTemplate.Free;
    VTemplate := TFileStream.Create(xFileName, fmOpenRead + fmShareDenyWrite);
  finally
    FreeAndNil(xStrStream);
  end;
end;

//  xDate := 'Today is : ' + DateTimeToStr(Now);
//    xNewStr := ReplaceStr(xStrStream.DataString, '_DATE_', xDate);

procedure TfrmStore.UpdateUserInterface;
begin
  ImageFile.Visible := true;
  ImageFile.ImageFile.Filename := gSC.ContentPath + 'images\' + lbModels.Text;
end;

initialization
  TfrmStore.SetAsMainForm;

end.
