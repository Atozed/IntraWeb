object IWForm6: TIWForm6
  Left = 0
  Top = 0
  Width = 998
  Height = 517
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWImageFile1: TIWImageFile
    Left = 32
    Top = 32
    Width = 129
    Height = 97
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    Cacheable = True
    FriendlyName = 'IWImageFile1'
  end
  object IWMemo1: TIWMemo
    Left = 224
    Top = 32
    Width = 681
    Height = 201
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
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      'This IWImageFile is poiting to a cache file created at runtime.'
      'The actual image is inside a RESOURCE file. A TResourceStream '
      
        'is created at runtime and the class TIWAppCache is used to creat' +
        'e the'
      'cache file.')
  end
  object IWLabel1: TIWLabel
    Left = 224
    Top = 248
    Width = 58
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWLabel1'
    RawText = False
  end
end
