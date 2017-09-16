object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 857
  Height = 812
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
  object IWMemo1: TIWMemo
    Left = 42
    Top = 88
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
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to create files and add them to th' +
        'e session cache. '
      
        'The same cache file may be served many times by your application' +
        ' during the session.'
      ''
      
        'Both cache files are deleted as soon as the session is destroyed' +
        '.'
      ''
      
        'The URL for both images below are set dynamically and they point' +
        ' to a cache file.'
      ''
      'Check the code in UserSessionUnit.pas to see how we did it.'
      ''
      
        'Also, click the button to open the second form and see the same ' +
        'images on it. Both images were not served again.'
      ''
      
        'We have used PNG images here but other things may be used this w' +
        'ay as well: video and sound files, PDF reports created at runtim' +
        'e, etc.')
  end
  object IWImageFile1: TIWImageFile
    Left = 40
    Top = 368
    Width = 250
    Height = 201
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    Cacheable = True
    FriendlyName = 'IWImageFile1'
  end
  object IWImageFile2: TIWImageFile
    Left = 376
    Top = 368
    Width = 225
    Height = 225
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    ScriptEvents = <>
    TabOrder = -1
    UseSize = False
    Cacheable = True
    FriendlyName = 'IWImageFile1'
  end
  object IWButton1: TIWButton
    Left = 632
    Top = 368
    Width = 169
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Open another form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton1Click
  end
  object IWLabel1: TIWLabel
    Left = 42
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
end
