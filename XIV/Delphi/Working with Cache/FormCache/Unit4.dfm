object IWForm4: TIWForm4
  Left = 0
  Top = 0
  Width = 852
  Height = 486
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
  object IWAudio1: TIWAudio
    Left = 26
    Top = 80
    Width = 385
    Height = 45
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    AutoPlay = False
  end
  object IWLabel1: TIWLabel
    Left = 26
    Top = 24
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
    Caption = 'This demo requires IntraWeb 14.0.11+'
    RawText = False
  end
  object IWMemo1: TIWMemo
    Left = 26
    Top = 160
    Width = 769
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
    TabOrder = 1
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to create files and add them to th' +
        'e form cache. '
      ''
      
        'We have 2 sample music files, one is MP3 and the other is OGG. T' +
        'hey are linked to our executable as RCDATA resources.'
      
        'The files are saved to the form cache and the URL is used in our' +
        ' IWAudio control.'
      ''
      'Form cache files are deleted when the "owner" form is destroyed.'
      ''
      
        'Just celebrating the 40th anniversary of Dark Side of the Moon ;' +
        '-)')
  end
end
