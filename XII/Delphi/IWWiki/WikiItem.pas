unit WikiItem;

interface

uses
  Classes;

type
  TWikiArticle = class
  private
    fTopicFolder: string;
    fFolder: string;
    fItemName: string;
    function GetConfigFileName: string;
    function GetHTMLFileName: string;
    function GetBaseFileName: string;
    function GetEditURL: string;
  public
    property HTMLFileName: string read GetHTMLFileName;
    property ConfigFileName: string read GetConfigFileName;
    property EditURL: string read GetEditURL;
    property ArticleName: string read fItemName;
    //
    constructor Create(aTopicFolder, aItemName: string);
    class procedure New(aTopicFolder: string; aData: TStrings);
    class procedure Edit(aTopicFolder: string; aItemName: string);
    class procedure Delete(aTopicFolder: string; aItemName: string);
    class procedure Move(aItemName: string; aDest: string);
    class procedure Rename(aTopicFolder, aOldArticleName, aNewArticleName: string);
  end;

  TWikiTopic = class
  private
    fBaseFolder: string;
    fTopicName: string;
    fIndex: TWikiArticle;
    function GetConfigFileName: string;
    function GetEditURL: string;
    function GetFolder: string;
  public
    property ConfigFileName: string read GetConfigFileName;
    property EditURL: string read GetEditURL;
    property Folder: string read GetFolder;
    property TopicName: string read fTopicName;
    //
    constructor Create(aParentTopic, aTopicName: string);
    destructor Destroy;
    class procedure New(aParentTopic: string; aData: TStrings);
    class procedure Edit(aTopicFolder: string);
    class procedure Delete(aItemName: string);
    class procedure Move(aItemName: string; aDest: string);
    class procedure Rename(aOldTopicName, aNewTopicName: string);
  end;

implementation

uses SysUtils, IWUtils, IWGlobal, IWApplication;

{ TWikiArticle }

constructor TWikiArticle.Create(aTopicFolder, aItemName: string);
begin
  fTopicFolder := aTopicFolder;
  fItemName := aItemName;
  fFolder := URLPathToFilePath(IncludeTrailingBackslash(gSC.ContentPath), aTopicFolder);
end;

function TWikiArticle.GetBaseFileName: string;
begin
  Result := StringReplace(fItemName, ' ', '', [rfReplaceAll])
end;

function TWikiArticle.GetConfigFileName: string;
begin
  Result := fFolder + '#' + GetBaseFileName + '.cfg';
end;

function TWikiArticle.GetEditURL: string;
begin
  Result := StringReplace('/$/iwedit' +  fTopicFolder + GetBaseFileName + '.html', '\', '/', [rfReplaceAll])
end;

function TWikiArticle.GetHTMLFileName: string;
begin
  Result := fFolder + GetBaseFileName + '.html';
end;

class procedure TWikiArticle.Delete(aTopicFolder: string; aItemName: string);
begin
  with TWikiArticle.Create(aTopicFolder, aItemName) do begin
    // delete HTML file
    DeleteFile(HTMLFIleName);
    // delete CFG file
    DeleteFile(ConfigFileName);
    Free;
  end;
end;

class procedure TWikiArticle.Edit(aTopicFolder: string; aItemName: string);
begin
  // edit the html page of the article
  with TWikiArticle.Create(aTopicFolder, aItemName) do begin
    GGetWebApplicationThreadVar.GoToURL(EditURL);
    Free;
  end;
end;

class procedure TWikiArticle.Move(aItemName, aDest: string);
begin
  //TODO: class procedure TWikiArticle.Move
end;

class procedure TWikiArticle.New(aTopicFolder: string; aData: TStrings);

  procedure CreateArticleFile(aFileName, aTitle: string);
  begin
    with TStringList.Create do begin
      Add('<html>');
      Add('<head>');
      Add('<title>' + aTitle + '</title>');
      Add('</head>');
      Add('<body>');
      Add('This is your new article.');
      Add('</body>');
      Add('</html>');
      SaveToFile(aFileName);
      Free;
    end;
  end;

  procedure CreateConfigFile(aFileName: string);
  begin
    with TStringList.Create do begin
      Add('[Template]');
      Add('Parent=Default');
      SaveToFile(aFileName);
      Free;
    end;
  end;

var
  xFolder: string;
  xFileName: string;
  xArticleName: string;
begin
  Assert(Assigned(aData));
  xArticleName := Trim(aData.Values['ArticleName']);
  with TWikiArticle.Create(aTopicFolder, xArticleName) do begin
    // Create HTML file on disk
    CreateArticleFile(HTMLFileName, xArticleName);
    // Create Config file on disk
    CreateConfigFile(ConfigFileName);
    Free;
  end;
end;

class procedure TWikiArticle.Rename(aTopicFolder, aOldArticleName, aNewArticleName: string);
var
  xNew, xOld: TWikiArticle;
begin
  xOld := TWikiArticle.Create(aTopicFolder, aOldArticleName);
  xNew := TWikiArticle.Create(aTopicFolder, aNewArticleName);
  try
    RenameFile(xOld.HTMLFileName, xNew.HTMLFileName);
    RenameFile(xOld.ConfigFileName, xNew.ConfigFileName);
  finally
    FreeAndNil(xOld);
    FreeAndNil(xNew);
  end;
end;

{ TWikiTopic }

constructor TWikiTopic.Create(aParentTopic, aTopicName: string);
begin
  inherited Create;
  fBaseFolder := URLPathToFilePath(IncludeTrailingBackslash(gSC.ContentPath), aParentTopic);
  fBaseFolder := IncludeTrailingBackslash(fBaseFolder);
  fTopicName := aTopicName;
  //
  fIndex := TWikiArticle.Create(IncludeURLPathDelimiter(aParentTopic) + aTopicName, 'index');
end;

destructor TWikiTopic.Destroy;
begin
  if Assigned(fIndex) then begin
    FreeAndNil(fIndex)
  end;
  inherited;
end;

function TWikiTopic.GetConfigFileName: string;
begin
  Result := Folder + '#Dir.cfg';
end;

function TWikiTopic.GetEditURL: string;
begin
  Result := fIndex.EditURL;
end;

function TWikiTopic.GetFolder: string;
begin
  Result := IncludeTrailingBackslash(fBaseFolder + fTopicName);
end;

class procedure TWikiTopic.Move(aItemName, aDest: string);
begin
  //TODO: implement TWikiTopic.Move
end;

class procedure TWikiTopic.New(aParentTopic: string; aData: TStrings);

  procedure CreateIndexFile(aFolder, aTitle: string);
  const
    cFileName = 'index.html';
  begin
    with TStringList.Create do begin
      Add('<html>');
      Add('<head>');
      Add('<title>' + aTitle + '</title>');
      Add('</head>');
      Add('<body>');
      Add('<h3>Topics</h3>');
      Add('<p>{%Enum.ListDirs%}</p>');
      Add('<h3>Articles in this topic</h3>');
      Add('<p>{%Enum.ListDocs%}</p>');
      Add('</body>');
      Add('</html>');
      SaveToFile(IncludeTrailingBackslash(aFolder) + cFileName);
      Free;
    end;
  end;

  procedure CreateConfigFile(aFileName, aTitle: string);
  begin
    with TStringList.Create do begin
      Add('[Dir]');
      Add('Title=' + aTitle);
      Add('');
      Add('[Sort]');
      Add('Doc=Doc.Name');
      Add('Dir=Dir.Name');
      SaveToFile(aFileName);
      Free;
    end;
  end;

  procedure CreateConfigFileIndex(aFolder: string);
  const
    cFileName = '#index.cfg';
  begin
    with TStringList.Create do begin
      Add('[Template]');
      Add('Parent=Default');
      SaveToFile(IncludeTrailingBackslash(aFolder) + cFileName);
      Free;
    end;
  end;

var
  xFolder: string;
  xTopicName: string;
begin
  Assert(Assigned(aData));
  xTopicName := Trim(aData.Values['TopicName']);
  with TWikiTopic.Create(aParentTopic, xTopicName) do begin
    // create the topic folder
    CreateDir(Folder);
    // create config file #Dir.cfg for the topic folder
    CreateConfigFile(GetConfigFileName, TopicName);
    // create index.html containing listing tags
    CreateIndexFile(Folder, TopicName);
    // create config file index#.cfg
    CreateConfigFileIndex(Folder);
    Free;
  end;
end;

class procedure TWikiTopic.Delete(aItemName: string);
begin
  //TODO: class procedure TWikiTopic.Delete
end;

class procedure TWikiTopic.Edit(aTopicFolder: string);
begin
  // edit the index.html page of the topic
  with TWikiTopic.Create(aTopicFolder, '') do begin
    GGetWebApplicationThreadVar.GoToURL(EditURL);
  end;
end;

class procedure TWikiTopic.Rename(aOldTopicName, aNewTopicName: string);
begin
  RenameFile(IncludeTrailingBackslash(gSC.ContentPath) + aOldTopicName, IncludeTrailingBackslash(gSC.ContentPath) + aNewTopicName);
end;

end.
