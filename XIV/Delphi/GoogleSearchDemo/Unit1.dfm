object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 871
  Height = 547
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 34
    Top = 36
    Width = 512
    Height = 33
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 20
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This demo requires IntraWeb 14.0.23+'
    RawText = False
  end
  object IWMemo1: TIWMemo
    Left = 34
    Top = 100
    Width = 559
    Height = 257
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 0
    SubmitOnAsyncEvent = False
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to create a new TContentHandler de' +
        'scendant to handle specific requests.'
      ''
      
        'In this case we have 2 different content handlers that should re' +
        'spond to bot/search engine requests.')
  end
end
