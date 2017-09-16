object IWForm8: TIWForm8
  Left = 0
  Top = 0
  Width = 788
  Height = 500
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
    Left = 32
    Top = 143
    Width = 697
    Height = 201
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
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
      
        'This demo shows you how to do the most basic customization of th' +
        'e standard exception output.'
      
        'When some unexpected exception is raised inside IWServer, IntraW' +
        'eb uses the TIWExceptionRenderer '
      'class display a user friendly message, in HTML form.'
      
        'In this simple case, we don'#39't want to cutomize the HTML, just th' +
        'e colors used by the standard'
      
        'TIWExceptionRenderer. Please check ServerController.OnConfig cod' +
        'e.'
      ''
      'ServerController.SessionTimeout is set to 1 minute.'
      
        'After 1 minute and 1 second of inactivity, a timer will trigger ' +
        'a Session Timeout error.'
      
        'The exception is raised during a full submit (not ASYNC event). ' +
        'Async events work the same way.')
  end
  object IWLabel1: TIWLabel
    Left = 32
    Top = 367
    Width = 121
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
    Caption = 'Session Started at:'
    RawText = False
  end
  object IWLabel2: TIWLabel
    Left = 32
    Top = 55
    Width = 697
    Height = 34
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'This Demo requires IntraWeb 14.0.11+'
    RawText = False
  end
  object IWURL1: TIWURL
    Left = 32
    Top = 95
    Width = 121
    Height = 17
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    ScriptEvents = <>
    TargetOptions.AddressBar = True
    TargetOptions.Height = -1
    TargetOptions.Left = -1
    TargetOptions.Menu = True
    TargetOptions.Resizable = True
    TargetOptions.Scrollbars = True
    TargetOptions.Toolbar = True
    TargetOptions.Top = -1
    TargetOptions.Width = -1
    TargetOptions.WindowName = 'IntraWeb Download'
    TerminateApp = False
    URL = 'http://www.atozed.com/IntraWeb/Download/Download_IW_XIV.EN.aspx'
    UseTarget = True
    FriendlyName = 'IWURL1'
    TabOrder = 1
    RawText = False
    Caption = 'Download it here'
  end
  object IWLabel3: TIWLabel
    Left = 32
    Top = 24
    Width = 697
    Height = 34
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebBLUE
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'Customizing TIWExceptionRenderer'
    RawText = False
  end
  object IWTimer1: TIWTimer
    Enabled = True
    Interval = 61000
    OnTimer = IWTimer1Timer
    Left = 40
    Top = 407
  end
end
