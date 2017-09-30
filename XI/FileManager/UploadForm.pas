unit UploadForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit, IWExtCtrls, IWURLResponderBase, IWURLResponder, IWCompListbox,
  IWCompLabel, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWHTMLTag, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component;

type
  TfrmUpload = class(TIWAppForm)
    IWFile: TIWFile;
    UploadButton: TIWButton;
    FoldersListBox: TIWListbox;
    ButtonNewFolder: TIWButton;
    IWLabel2: TIWLabel;
    CurrentFolderLabel: TIWLabel;
    MessageLabel: TIWLabel;
    IWTimer: TIWTimer;
    ButtonClose: TIWButton;
    procedure UploadButtonClick(Sender: TObject);
    procedure FoldersListBoxAsyncDoubleClick(Sender: TObject;
      EventParams: TStringList);
    procedure ButtonNewFolderClick(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
    procedure IWTimerAsyncTimer(Sender: TObject; EventParams: TStringList);
    procedure ButtonCloseClick(Sender: TObject);
  private
    mParentFolderStack: TStringList;
    procedure PopulateFoldersListBox(AFolder: string);
    procedure AddFolderToStack(AFolder: string);
    function GetTopFolderFromStack(ARemoveTopFolder: Boolean = False): string;
    procedure InitFolderList;
    procedure UpdateCurrentFolderLabel;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

uses IWURLMap, ServerController, IWUtils, NewFolderForm;

procedure TfrmUpload.AddFolderToStack(AFolder: string);
begin
  mParentFolderStack.Add(AFolder);
end;

function TfrmUpload.GetTopFolderFromStack(ARemoveTopFolder: Boolean = False): string;

  function GetFullPath: string;
  var
    i: Integer;
  begin
    Result := '';
    for i := 0 to mParentFolderStack.Count - 1 do begin
      Result := Result + mParentFolderStack[i] + '\';
    end;
  end;

begin
  if ARemoveTopFolder and (mParentFolderStack.Count > 0) then begin
    mParentFolderStack.Delete(mParentFolderStack.Count - 1);
  end;
  if mParentFolderStack.Count > 0 then begin
    Result := GetFullPath;
  end else begin
    Result := '';
  end;
end;

procedure TfrmUpload.ButtonCloseClick(Sender: TObject);
begin
  Release;
end;

procedure TfrmUpload.ButtonNewFolderClick(Sender: TObject);
var
  xDir: string;
begin
   xDir := URLPathToFilePath(IncludeTrailingBackslash(IWServerController.ContentPath), GetTopFolderFromStack);
  TfrmNewFolder.Create(WebApplication, xDir).Show;
end;

constructor TfrmUpload.Create(AOwner: TComponent);
begin
  mParentFolderStack := TStringList.Create;
  inherited;
end;

destructor TfrmUpload.Destroy;
begin
  FreeAndNil(mParentFolderStack);
  inherited;
end;

procedure TfrmUpload.InitFolderList;
begin
  FoldersListBox.NoSelectionText := '';
  FoldersListBox.RequireSelection := True;
  PopulateFoldersListBox(GetTopFolderFromStack);
end;

procedure TfrmUpload.IWAppFormRender(Sender: TObject);
begin
  UpdateCurrentFolderLabel;
  InitFolderList;
end;

procedure TfrmUpload.IWTimerAsyncTimer(Sender: TObject;
  EventParams: TStringList);
begin
  MessageLabel.Visible := False;
  IWTimer.Enabled := False;
end;

procedure TfrmUpload.FoldersListBoxAsyncDoubleClick(Sender: TObject;
  EventParams: TStringList);
var
  LSelectedFolder: string;
  xDir: string;
begin
  LSelectedFolder := FoldersListBox.Items[FoldersListBox.ItemIndex];
  if LSelectedFolder <> '..' then begin
    PopulateFoldersListBox( GetTopFolderFromStack + LSelectedFolder);
    AddFolderToStack(LSelectedFolder);
  end else begin
    PopulateFoldersListBox(GetTopFolderFromStack(True));
  end;
  UpdateCurrentFolderLabel;
end;

procedure TfrmUpload.PopulateFoldersListBox(AFolder: string);
var
  xDir: string;
  xSearch: TSearchRec;
begin
  xDir := URLPathToFilePath(IncludeTrailingBackslash(IWServerController.ContentPath), AFolder);
  FoldersListBox.Items.Clear;

  // Will return false if its a file, and then fall back to content mode
  if DirectoryExists(xDir) then begin
    xDir := IncludeTrailingBackslash(xDir);
    if SysUtils.FindFirst(xDir + '*.*', faAnyFile, xSearch) = 0 then begin
      repeat
        if (xSearch.Name <> '.') and (xSearch.Attr = 16)  then begin
          if FoldersListBox.Items.IndexOf(xSearch.Name) = -1 then begin
            FoldersListBox.Items.Add(xSearch.Name);
          end;
        end;
      until FindNext(xSearch) <> 0;
      FindClose(xSearch);
    end;
  end;
end;

procedure TfrmUpload.UpdateCurrentFolderLabel;
var
  xDir: string;
begin
  xDir := URLPathToFilePath(IncludeTrailingBackslash(IWServerController.ContentPath), GetTopFolderFromStack);
  CurrentFolderLabel.Caption := Format('Current folder: %s', [xDir]);
end;

procedure TfrmUpload.UploadButtonClick(Sender: TObject);
var
  xDir: string;
begin
  xDir := URLPathToFilePath(IncludeTrailingBackslash(IWServerController.ContentPath), GetTopFolderFromStack);
  IWFile.SaveToFile(xDir + IWFile.Filename);
  MessageLabel.Visible := True;
  IWTimer.Enabled := True;
  MessageLabel.Caption := Format('New file "%s" uploaded to "%s"', [IWFile.Filename, xDir])
end;

initialization
  TIWURLMap.Add('/upload/', '', TfrmUpload);

end.
