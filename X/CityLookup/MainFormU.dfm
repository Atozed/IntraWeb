object IWForm3: TIWForm3
  Left = 0
  Top = 0
  Width = 687
  Height = 589
  RenderInvisibleControls = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '')
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brSafari, brNetscape6]
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  StyleSheet.Filename = 'styles.css'
  ShowHint = True
  XPTheme = True
  DesignSize = (
    687
    589)
  DesignLeft = 8
  DesignTop = 8
  object EditCity: TIWEdit
    Left = 16
    Top = 80
    Width = 193
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'EditCity'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <
      item
        EventCode.Strings = (
          
            'if ((event.keyCode==40) && (LISTBOXCITIESIWCL.style.visibility !' +
            '= '#39'hidden'#39')) {'
          '  LISTBOXCITIESIWCL.focus();'
          '};'
          'return true;')
        Event = 'onKeyDown'
      end>
    SubmitOnAsyncEvent = True
    TabOrder = 0
    OnAsyncKeyPress = EditCityAsyncKeyPress
    PasswordPrompt = False
  end
  object IWLabel1: TIWLabel
    Left = 16
    Top = 58
    Width = 64
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Enter City:'
    RawText = False
  end
  object ListBoxCities: TIWListbox
    Left = 16
    Top = 99
    Width = 193
    Height = 121
    Cursor = crAuto
    Visible = False
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    UseSize = True
    OnAsyncChange = ListBoxCitiesAsyncChange
    OnAsyncKeyPress = EditCityAsyncKeyPress
    DoSubmitValidation = True
    Editable = True
    TabOrder = 1
    SubmitOnAsyncEvent = True
    MaxItems = 0
    FriendlyName = 'ListBox Citties'
    ItemIndex = -1
    MultiSelect = False
    Sorted = False
  end
  object IWRectangle1: TIWRectangle
    Left = 16
    Top = 14
    Width = 377
    Height = 38
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Text = 'IntraWeb City Lookup Demo'
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = [fsBold]
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'IWRectangle1'
    Color = clWebLIGHTSTEELBLUE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWText1: TIWText
    Left = 240
    Top = 80
    Width = 421
    Height = 177
    Cursor = crAuto
    Anchors = [akLeft, akTop, akRight]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demo demonstrates how IntraWeb'#39's Ajax feature can be used t' +
        'o implement a incremental search edit.'
      
        'Everytime the user enters a key, an asynchronous request is sent' +
        ' to the IntraWeb server, which performs a database lookup to fin' +
        'd the 5 best matches for the current input.'
      
        'The database is just a simple clientdataset with about 4000 entr' +
        'ies, but it shows how this would work in real.'
      ''
      'Hints:'
      
        '- Press [Arrow-Down] in the Edit to select any of the citties in' +
        ' the combobox.'
      '- Press [Enter] to select the currently marked city')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWText2: TIWText
    Left = 16
    Top = 279
    Width = 513
    Height = 234
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText2'
    Lines.Strings = (
      '<pre class="sourcecode">'
      
        '<code class="keyword">procedure</code> TIWForm3.EditCityAsyncKey' +
        'Press(Sender: TObject;'
      '  EventParams: TStringList);'
      '<code class="keyword">var</code>'
      '  LCity: <code class="keyword">string</code>;'
      '  i: Integer;'
      '<code class="keyword">begin</code>'
      '  <code class="comment">//Check for Enter key pressed</code>'
      
        '  <code class="keyword">if</code> (EventParams.Values[<code clas' +
        's="quote">'#39'which'#39'</code>] = <code class="quote">'#39'13'#39'</code>) <co' +
        'de class="keyword">and</code> (ListBoxCities.ItemIndex &gt;=0) <' +
        'code class="keyword">then</code> <code class="keyword">begin</co' +
        'de>'
      
        '    EditCity.Text := ListBoxCities.Items.Strings[ListBoxCities.I' +
        'temIndex];'
      
        '    WebApplication.ShowMessage(<code class="quote">'#39'You selected' +
        ': '#39'</code> + EditCity.Text);'
      '  <code class="keyword">end</code>'
      
        '  <code class="keyword">else</code> <code class="keyword">if</co' +
        'de> sender = EditCity <code class="keyword">then</code> <code cl' +
        'ass="keyword">begin</code>'
      
        '    <code class="comment">//Not Enter pressed, do incremental lo' +
        'okup</code>'
      '    LCity := trim(EditCity.text);'
      
        '    <code class="keyword">if</code> LCity &gt; <code class="quot' +
        'e">'#39#39'</code> <code class="keyword">then</code> <code class="keyw' +
        'ord">begin</code>'
      '      ListBoxCities.Visible := true;'
      '      <code class="comment">//Find the best match</code>'
      '      UserSession.cdsCities.FindNearest([LCity]);'
      '      ListBoxCities.Items.Clear;'
      '      <code class="comment">//list the match</code>'
      
        '      ListBoxCities.Items.Add(UserSession.cdsCitiesCity.AsString' +
        ');'
      
        '      <code class="comment">//list four more matches (if exist)<' +
        '/code>'
      
        '      <code class="keyword">for</code> i := 1 <code class="keywo' +
        'rd">to</code> 4 <code class="keyword">do</code> <code class="key' +
        'word">begin</code>'
      '        UserSession.cdsCities.Next;'
      
        '        <code class="keyword">if</code> UserSession.cdsCities.Eo' +
        'f <code class="keyword">then</code>'
      '          break'
      '        <code class="keyword">else</code>'
      
        '          ListBoxCities.Items.Add(UserSession.cdsCitiesCity.AsSt' +
        'ring);'
      '      <code class="keyword">end</code>;'
      '      <code class="comment">//select the best match</code>'
      '      ListBoxCities.ItemIndex := 0;'
      '    <code class="keyword">end</code>;'
      '  <code class="keyword">end</code>;'
      '<code class="keyword">end</code>;'
      ''
      
        '<code class="keyword">procedure</code> TIWForm3.ListBoxCitiesAsy' +
        'ncChange(Sender: TObject;'
      '  EventParams: TStringList);'
      '<code class="keyword">begin</code>'
      
        '  EditCity.Text := ListBoxCities.Items.Strings[ListBoxCities.Ite' +
        'mIndex];'
      '<code class="keyword">end</code>;'
      '</pre>')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
  object IWLabel2: TIWLabel
    Left = 16
    Top = 257
    Width = 537
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 
      'Following is the whole source code required to make this working' +
      ' - amazing, isn'#39't it?'
    RawText = False
  end
end
