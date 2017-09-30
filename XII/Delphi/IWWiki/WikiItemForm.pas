unit WikiItemForm;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompButton,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompEdit, IWURLResponderBase, IWURLResponder, IWCompListbox,
  IWCompLabel, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, IWHTMLTag, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML, HTTPApp,
  IWCompText, IWCompExtCtrls, IW.HttpRequest;

type
  TMode = (
    mdNewTopic, mdNewArticle,
    mdDeleteTopic, mdDeleteArticle,
    mdRenameTopic, mdRenameArticle,
    mdEditTopic, mdEditArticle
    );

  TfrmManageItem = class(TIWAppForm)
    IWTP: TIWTemplateProcessorHTML;
    IWRegion: TIWRegion;
    IWTimerEdit: TIWTimer;
    ItemButton: TIWButton;
    ItemLabel: TIWLabel;
    CancelButton: TIWButton;
    ItemNameEdit: TIWEdit;
    CurrentTopicLabel: TIWLabel;
    IWText: TIWText;
    procedure CancelButtonClick(Sender: TObject);
    procedure IWTimerEditTimer(Sender: TObject);
    procedure IWAppFormRender(Sender: TObject);
  private
    mCurrentTopic: string;
    mItemName: string;
    mMode: TMode;
    procedure Init;
    procedure NewTopic;
    procedure EditTopic;
    procedure RenameTopic;
    procedure DeleteTopic;
    procedure MoveTopic;
    //
    procedure NewArticle;
    procedure EditArticle;
    procedure RenameArticle;
    procedure DeleteArticle;
    procedure MoveArticle;
    //
    procedure CloseForm;
    procedure NewItemButtonClick(Sender: TObject);
    procedure DeleteItemButtonClick(Sender: TObject);
    procedure RenameItemButtonClick(Sender: TObject);
  public
    class function RequestAuth(aRequest: THttpRequest; var rGroup: string): Boolean; override;
  end;

implementation

{$R *.dfm}

uses IWURLMap, ServerController, IWUtils, IWGlobal, InURI, WikiItem;

const
  urlEditTopic = '/EditTopic/';
  urlRenameTopic = '/RenameTopic/';
  urlMoveTopic = '/MoveTopic/';
  urlNewTopic = '/NewTopic/';
  urlDeleteTopic = '/DeleteTopic/';
  //
  urlEditArticle = '/EditArticle/';
  urlRenameArticle = '/RenameArticle/';
  urlMoveArticle = '/MoveArticle/';
  urlNewArticle = '/NewArticle/';
  urlDeleteArticle = '/DeleteArticle/';

procedure TfrmManageItem.IWAppFormRender(Sender: TObject);
begin
  Init;
end;

procedure TfrmManageItem.IWTimerEditTimer(Sender: TObject);
begin
  IWTimerEdit.Enabled := False;
  if mMode = mdEditArticle then begin
    TWikiArticle.Edit(mCurrentTopic, mItemName);
  end else if mMode = mdEditTopic then begin
    TWikiTopic.Edit(mCurrentTopic);
  end;
  Release;
end;

procedure TfrmManageItem.CancelButtonClick(Sender: TObject);
begin
  CloseForm;
end;

procedure TfrmManageItem.CloseForm;
begin
  Release;
  WebApplication.GoToURL(mCurrentTopic);
end;

procedure TfrmManageItem.Init;
var
  xHost: string;
begin
  // converts some encoded characteres like %20 to ' '
  mCurrentTopic := TInURI.URLDecode(WebApplication.ReferringURLLast);
  xHost := string(WebApplication.Request.Host);
  if WebApplication.Request.ServerPort <> 80 then begin
    xHost := xHost + ':' + IntToStr(WebApplication.Request.ServerPort);
  end;
  mCurrentTopic := IWStringReplace(mCurrentTopic, 'http://' + xHost, '');

  mItemName := Copy(mCurrentTopic, LastDelimiter('/', mCurrentTopic) + 1, Length(mCurrentTopic));
  // we dont need the file extension
  mItemName := Copy(mItemName, 0, LastDelimiter('.', mItemName) - 1);
  mCurrentTopic := IWStringReplace(mCurrentTopic, 'index.html', '');
  mCurrentTopic := Copy(mCurrentTopic, 0, LastDelimiter('/', mCurrentTopic));

  IWRegion.Visible := True;

  IWText.Text := '';
  IWText.Visible := False;
  ItemLabel.Visible := True;
  ItemNameEdit.Visible := True;

  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlEditTopic then begin
    EditTopic;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlRenameTopic then begin
    RenameTopic;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlMoveTopic then begin
    MoveTopic;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlNewTopic then begin
    NewTopic;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlDeleteTopic then begin
    DeleteTopic;
  end else
  //
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlEditArticle then begin
    EditArticle;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlRenameArticle then begin
    RenameArticle;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlMoveArticle then begin
    MoveArticle;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlNewArticle then begin
    NewArticle;
  end else
  if IncludeURLPathDelimiter(WebApplication.MappedURL) = urlDeleteArticle then begin
    DeleteArticle;
  end else begin
    raise Exception.Create('How did you came here?');
  end;
end;

procedure TfrmManageItem.MoveArticle;
begin
  //TODO: procedure TfrmManageItem.MoveArticle;
end;

procedure TfrmManageItem.MoveTopic;
begin
  //TODO: procedure TfrmManageItem.MoveTopic;
end;

procedure TfrmManageItem.NewArticle;
begin
  ItemLabel.Caption := 'Type the New Article name (do not add the .HTML extension):';
  ItemButton.Caption := 'Create the New Article';
  CurrentTopicLabel.Caption := 'Current Topic: ' + mCurrentTopic;
  IWText.Visible := True;
  IWText.Text := 'After you click on the "' + ItemButton.Caption + '" button, you will be able to edit the article content.';
  ItemButton.OnClick := NewItemButtonClick;
  mMode := mdNewArticle;
end;

procedure TfrmManageItem.NewTopic;
begin
  ItemLabel.Caption := 'Type the new topic name:';
  ItemButton.Caption := 'Create the new topic';
  CurrentTopicLabel.Caption := 'Current Topic: ' + mCurrentTopic;
  ItemButton.OnClick := NewItemButtonClick;
  IWText.Visible := True;
  IWText.Text := 'After you click on the "' + ItemButton.Caption + '" button, you will be able to edit the topic''s index.html file.';
  mMode := mdNewTopic;
end;

procedure TfrmManageItem.DeleteArticle;
begin
  ItemButton.Caption := 'Delete the Article';
  CurrentTopicLabel.Caption := 'Article: ' + mCurrentTopic + mItemName;
  ItemButton.OnClick := DeleteItemButtonClick;
  ItemButton.Confirmation := 'Do you confirm the Delete operation?';
  ItemLabel.Visible := False;
  ItemNameEdit.Visible := False;
  IWText.Visible := False;
  mMode := mdDeleteArticle;
end;

procedure TfrmManageItem.DeleteTopic;
begin
  ItemButton.Caption := 'Delete the Topic';
  CurrentTopicLabel.Caption := 'Current Topic: ' + mCurrentTopic;
  ItemButton.OnClick := DeleteItemButtonClick;
  ItemButton.Confirmation := 'Do you confirm the Delete operation?';
  ItemLabel.Visible := False;
  ItemNameEdit.Visible := False;
  IWText.Visible := False;
  mMode := mdDeleteArticle;
end;

procedure TfrmManageItem.EditArticle;
begin
  //
  IWRegion.Visible := False;
  mMode := mdEditArticle;
  IWTimerEdit.Enabled := True;
end;

procedure TfrmManageItem.EditTopic;
begin
  //
  IWRegion.Visible := False;
  mMode := mdEditTopic;
  IWTimerEdit.Enabled := True;
end;

procedure TfrmManageItem.RenameArticle;
begin
  ItemButton.Caption := 'Rename the Article';
  CurrentTopicLabel.Caption := 'Current Topic: ' + mCurrentTopic;
  ItemButton.OnClick := RenameItemButtonClick;
  ItemLabel.Caption := 'New Article Name:';
  ItemButton.Confirmation := 'Do you confirm the Rename operation?';
  ItemNameEdit.Text := mItemName;
  IWText.Visible := True;
  IWText.Text := 'Please note you are renaming the Article File name. If you want to edit the Article title, you need to '+
    'choose the [Edit] option.';
  mMode := mdRenameArticle;
end;

procedure TfrmManageItem.RenameTopic;
var
  xStr: string;
begin
  ItemButton.Caption := 'Rename the Topic';
  CurrentTopicLabel.Caption := 'Current Topic name: ' + mCurrentTopic;
  ItemButton.OnClick := RenameItemButtonClick;
  ItemLabel.Caption := 'New Topic Name:';
  ItemButton.Confirmation := 'Do you confirm the Rename operation?';
  //
  xStr := mCurrentTopic;
  if xStr[Length(xStr)] = '/' then begin
    Delete(xStr, Length(xStr), 1);
  end;
  ItemNameEdit.Text := Copy(xStr, LastDelimiter('/', xStr) + 1, Length(xStr));
  mItemName := ItemNameEdit.Text;
  mCurrentTopic := IWStringReplace(mCurrentTopic, mItemName + '/', '');
  //
  IWText.Visible := True;
  IWText.Text := 'Please note you are renaming the Topic Folder name. If you want to edit the Topic title, you need to '+
    'choose the [Edit] option.';
  mMode := mdRenameTopic;
end;

procedure TfrmManageItem.NewItemButtonClick(Sender: TObject);
var
  xData: TStrings;
  xItemName: string;
begin
  xItemName := ItemNameEdit.Text;
  if mMode = mdNewTopic then begin
    xData := TStringList.Create;
    try
      xData.Add('TopicName=' + ItemNameEdit.Text);
      TWikiTopic.New(mCurrentTopic, xData);
      TWikiTopic.Edit(mCurrentTopic + ItemNameEdit.Text);
    finally
      xData.Free;
    end;
  end else if (mMode = mdNewArticle) then begin
    xData := TStringList.Create;
    try
      xData.Add('ArticleName=' + xItemName);
      TWikiArticle.New(mCurrentTopic, xData);
      TWikiarticle.Edit(mCurrentTopic, xItemName);
    finally
      xData.Free;
    end;
  end;
end;

procedure TfrmManageItem.DeleteItemButtonClick(Sender: TObject);
begin
  if mMode = mdDeleteTopic then begin
    ;
  end else
  if mMode = mdDeleteArticle then begin
    TWikiArticle.Delete(mCurrentTopic, mItemName);
  end;
  CloseForm;
end;

procedure TfrmManageItem.RenameItemButtonClick(Sender: TObject);
begin
  if mMode = mdRenameTopic then begin
    TWikiTopic.Rename(mCurrentTopic + mItemName, mCurrentTopic + ItemNameEdit.Caption);
  end else
  if mMode = mdRenameArticle then begin
    TWikiArticle.Rename(mCurrentTopic, mItemName, ItemNameEdit.Caption);
  end;
  CloseForm;
end;

class function TfrmManageItem.RequestAuth(aRequest: THttpRequest; var rGroup: string): Boolean;
begin
  // this will make the app request authorization, if no user is logged in
  Result := not Assigned(UserSession.CurrentUser);
end;

initialization
  TIWURLMap.Add(urlEditTopic, '', TfrmManageItem);
  TIWURLMap.Add(urlRenameTopic, '', TfrmManageItem);
  TIWURLMap.Add(urlMoveTopic, '', TfrmManageItem);
  TIWURLMap.Add(urlNewTopic, '', TfrmManageItem);
  TIWURLMap.Add(urlDeleteTopic, '', TfrmManageItem);
  //
  TIWURLMap.Add(urlEditArticle, '', TfrmManageItem);
  TIWURLMap.Add(urlRenameArticle, '', TfrmManageItem);
  TIWURLMap.Add(urlMoveArticle, '', TfrmManageItem);
  TIWURLMap.Add(urlNewArticle, '', TfrmManageItem);
  TIWURLMap.Add(urlDeleteArticle, '', TfrmManageItem);

end.
