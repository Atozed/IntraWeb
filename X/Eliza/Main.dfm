object formMain: TformMain
  Left = 0
  Top = 0
  Width = 525
  Height = 384
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
  AllowPageAccess = True
  ActiveControl = lboxPersonalities
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    525
    384)
  DesignLeft = 291
  DesignTop = 134
  object IWText1: TIWText
    Left = 41
    Top = 16
    Width = 448
    Height = 121
    Cursor = crAuto
    Anchors = [akTop]
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
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'Hello,'
      ''
      
        'I am Eliza, based on the orginal Eliza code originally written i' +
        'n the 1970'#39's. '
      ''
      
        'I am an expanded version of Eliza with more personalities. Pleas' +
        'e select'
      'the personality below that you would like to speak with.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWRegion1: TIWRegion
    Left = 64
    Top = 176
    Width = 393
    Height = 169
    Cursor = crAuto
    RenderInvisibleControls = False
    TabOrder = 0
    Anchors = []
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ClipRegion = False
    ZIndex = -1
    Splitter = False
    object IWLabel1: TIWLabel
      Left = 32
      Top = 17
      Width = 73
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
      Font.Size = 10
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Personality'
      RawText = False
    end
    object lboxPersonalities: TIWListbox
      Left = 32
      Top = 32
      Width = 265
      Height = 121
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
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FocusColor = clNone
      AutoHideOnMenuActivation = False
      ItemsHaveValues = False
      NoSelectionText = '-- No Selection --'
      Required = False
      RequireSelection = True
      ScriptEvents = <>
      UseSize = False
      DoSubmitValidation = True
      Editable = True
      TabOrder = 1
      SubmitOnAsyncEvent = True
      MaxItems = 0
      FriendlyName = 'lboxPersonalities'
      ItemIndex = -1
      MultiSelect = False
      Sorted = False
    end
    object butnGo: TIWButton
      Left = 304
      Top = 32
      Width = 75
      Height = 25
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
      Caption = 'Go'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'butnGo'
      ScriptEvents = <>
      TabOrder = 0
      OnClick = butnGoClick
    end
  end
end
