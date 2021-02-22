object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 777
  Height = 731
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
    Top = 142
    Width = 697
    Height = 323
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo shows how to use templates to display custom error pag' +
        'es.'
      ''
      
        'When some unexpected exception is raised inside IWServer (or a t' +
        'imeout exception), '
      
        'IntraWeb first checks for HTML template files in our template fo' +
        'lder. If the file is not found, then'
      'the standard IWExceptionRendered is used.'
      ''
      'The files must have special names:'
      '- IWSessionTimeout.html, for Timeout errors'
      '- IWError.html, for all other unhandled errors'
      
        'Template HTML files may contain special tags. These tags will be' +
        ' replaced with their values before they get to the browser. Chec' +
        'k the HTML files inside Template subfolder.'
      ''
      'ServerController.SessionTimeout is set to %d minute(s).'
      
        'After %d minute(s) and 1 second of inactivity, a timer will trig' +
        'ger a Session Timeout error.'
      
        'You can also trigger the SessionTimout - after the session has e' +
        'xpired - clicking on the "Trigger Timeout" button above.'
      
        'The exception is raised during a full submit (not ASYNC event). ' +
        'Async events work the same way.')
  end
  object IWLabel1: TIWLabel
    Left = 32
    Top = 486
    Width = 155
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Session Started at:'
  end
  object IWLabel2: TIWLabel
    Left = 32
    Top = 54
    Width = 697
    Height = 34
    Font.Color = clWebRED
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = [fsBold]
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'This Demo requires IntraWeb 14.0.11+'
  end
  object IWURL1: TIWURL
    Left = 32
    Top = 94
    Width = 121
    Height = 17
    Hint = 'http://www.atozed.com/IntraWeb/Download/Download_IW_XIV.EN.aspx'
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    HasTabOrder = True
    TargetOptions.AddressBar = True
    TargetOptions.Menu = True
    TargetOptions.Toolbar = True
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
    Font.Color = clWebBLUE
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = [fsBold]
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'Customized Exception Handling using Templates'
  end
  object IWLabel4: TIWLabel
    Left = 32
    Top = 580
    Width = 697
    Height = 83
    Font.Color = clWebRED
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 14
    Font.Style = [fsBold]
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 
      'Important: If you are using Evaluation/Bundled editions, your Se' +
      'ssionTimout interval if fixed and cannot be changed'
  end
  object IWLabel5: TIWLabel
    Left = 32
    Top = 518
    Width = 196
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel5'
    Caption = 'Your session timeout is:'
  end
  object IWButton1: TIWButton
    Left = 528
    Top = 94
    Width = 201
    Height = 25
    Caption = 'Trigger Timeout'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 2
    OnClick = IWButton1Click
  end
  object IWLabel6: TIWLabel
    Left = 32
    Top = 548
    Width = 220
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel6'
    Caption = 'Your session will expire at:'
  end
  object IWTimer1: TIWTimer
    Enabled = True
    Interval = 61000
    ShowAsyncLock = False
    OnAsyncTimer = IWTimer1AsyncTimer
    Left = 40
    Top = 598
  end
end
