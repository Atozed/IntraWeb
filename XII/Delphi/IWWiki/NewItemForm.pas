unit NewItemForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit, IWExtCtrls, IWURLResponderBase, IWURLResponder, IWCompListbox,
  IWCompLabel, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWHTMLTag, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, HTTPApp;

type
  TMode = (mdNewTopic, mdNewDoc);

  TfrmNewItem = class(TIWAppForm)
    IWRegion: TIWRegion;
    MessageLabel: TIWLabel;
    IWTP: TIWTemplateProcessorHTML;
    irUploadFile: TIWRegion;
    lblNewItem: TIWLabel;
    CancelButton: TIWButton;
    NewItemButton: TIWButton;
    edtNewItemName: TIWEdit;
    lblCurrentTopic: TIWLabel;
    procedure NewItemButtonClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    mParentFolderStack: TStringList;
    mCurrentFolder: string;
    mMode: TMode;
    procedure Init;
    procedure NewDocument;
    procedure NewTopic;
    procedure CloseForm;
  public
    class function RequestAuth(aRequest: TWebRequest; var rGroup: string): Boolean; override;
  end;

implementation

{$R *.dfm}

uses IWURLMap, ServerController, IWUtils, IWGlobal, InURI;

const
  urlNewDoc = '/NewArticle/';
  urlNewTopic = '/NewTopic/';

procedure TfrmNewItem.IWAppFormCreate(Sender: TObject);
begin
  Init;
end;

procedure TfrmNewItem.NewDocument;
begin
  lblNewItem.Caption := 'Type the New Article name (do not add the .HTML extension):';
  NewItemButton.Caption := 'Create the New Article';
  lblCurrentTopic.Caption := 'Current Topic: ' + mCurrentFolder;
  mMode := mdNewDoc;
end;

procedure TfrmNewItem.NewTopic;
begin
  lblNewItem.Caption := 'Type the new topic name:';
  NewItemButton.Caption := 'Create the new topic';
  lblCurrentTopic.Caption := 'Current Topic: ' + mCurrentFolder;
  mMode := mdNewTopic;
end;

procedure TfrmNewItem.CancelButtonClick(Sender: TObject);
begin
  CloseForm;
end;

procedure TfrmNewItem.CloseForm;
begin
  Release;
  WebApplication.GoToURL(mCurrentFolder);
end;

procedure TfrmNewItem.Init;
var
  xHost: string;
begin
  // converts some encoded characteres like %20 to ' '
  mCurrentFolder := TInURI.URLDecode(WebApplication.ReferringURLLast);
  xHost := WebApplication.Request.Host;
  if WebApplication.Request.ServerPort <> 80 then begin
    xHost := xHost + ':' + IntToStr(WebApplication.Request.ServerPort);
  end;
  mCurrentFolder := IWStringReplace(mCurrentFolder, 'http://' + xHost, '');
  mCurrentFolder := Copy(mCurrentFolder, 0, LastDelimiter('/', mCurrentFolder));
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlNewDoc then begin
    NewDocument;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlNewTopic then begin
    NewTopic;
  end else begin
    raise Exception.Create('How did you came here?');
  end;
end;

procedure TfrmNewItem.NewItemButtonClick(Sender: TObject);

function CreateFile(aFileName, aFolder, aTitle: string): string;
begin
  Result := aFolder + aFileName;
  with TStringList.Create do begin
    Add('<html>');
    Add('<head>');
    Add('<title>' + aTitle + '</title>');
    Add('</head>');
    Add('<body>');
    Add('This is your new article.');
    Add('</body>');
    Add('</html>');
    SaveToFile(Result);
    Free;
  end;
end;

const
  IndexHTML =
    '<html>'+
    '<title>%s</title>'+
    '<body>'+
    '<h3>Topics'+
    '</h3>'+
    '<p>{%Enum.ListDirs%}</p>'+
    '<h3>Articles in this topic</h3>'+
    '<p>{%Enum.ListDocs%}</p>'+
    '</body>'+
    '</html>';

var
  xFolder: string;
  xFileName: string;
begin
  if mMode = mdNewTopic then begin
    // create topic folder
    xFolder := URLPathToFilePath(IncludeTrailingBackslash(IWServerController.ContentPath), mCurrentFolder);
    if Trim(edtNewItemName.Text) <> ''  then begin
      xFolder := IncludeTrailingBackslash(xFolder) + Trim(edtNewItemName.Text);
      // create the topic folder
      CreateDir(xFolder);
      // create config file #Dir.cfg
      with TStringList.Create do begin
        Add('[Dir]');
        Add('Title=' + Trim(edtNewItemName.Text));
        Add('');
        Add('[Sort]');
        Add('Doc=Doc.Name');
        Add('Dir=Dir.Name');
        SaveToFile(IncludeTrailingBackslash(xFolder) + '#Dir.cfg');
        Free;
      end;
      // create index.html containing listing tags
      with TStringList.Create do begin
        Add(Format(IndexHTML, [Trim(edtNewItemName.Text)]));
        SaveToFile(IncludeTrailingBackslash(xFolder) + 'index.html');
        Free;
      end;
      // create config file index#.cfg
      with TStringList.Create do begin
        Add('[Template]');
        Add('Parent=Default');
        SaveToFile(IncludeTrailingBackslash(xFolder) + '#index.cfg');
        Free;
      end;
      // calls the editor for the new index.html
      WebApplication.GoToURL(StringReplace('/$/iwedit/' +  mCurrentFolder + Trim(edtNewItemName.Text) + '/index.html', '\', '/', [rfReplaceAll]));
    end;
  end else begin
    // File Name
    xFolder := URLPathToFilePath(IncludeTrailingBackslash(IWServerController.ContentPath), mCurrentFolder);
    if Trim(edtNewItemName.Text) <> ''  then begin
      xFileName := StringReplace(edtNewItemName.Text, ' ', '', [rfReplaceAll]) + '.html';
      // Create file on disk
      xFileName := CreateFile(xFileName, xFolder, edtNewItemName.Text);
      // create config file
      xFileName := StringReplace('#'+edtNewItemName.Text, ' ', '', [rfReplaceAll]) + '.cfg';
      with TStringList.Create do begin
        Add('[Template]');
        Add('Name=Default');
        SaveToFile(xFolder + xFileName);
        Free;
      end;
      // call editor
      xFileName := StringReplace(edtNewItemName.Text, ' ', '', [rfReplaceAll]) + '.html';
      WebApplication.GoToURL(StringReplace('/$/iwedit/' +  mCurrentFolder + xFileName, '\', '/', [rfReplaceAll]));
    end;
  end;
end;

class function TfrmNewItem.RequestAuth(aRequest: TWebRequest; var rGroup: string): Boolean;
begin
  // this will make the app request authorization, if no user is logged in
  Result := not Assigned(UserSession.CurrentUser);
end;

initialization
  TIWURLMap.Add(urlNewDoc, '', TfrmNewItem);
  TIWURLMap.Add(urlNewTopic, '', TfrmNewItem);

end.
