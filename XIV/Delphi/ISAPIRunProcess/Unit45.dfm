object IWForm45: TIWForm45
  Left = 0
  Top = 0
  Width = 791
  Height = 686
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
  object IWEdit1: TIWEdit
    Left = 72
    Top = 216
    Width = 441
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    Editable = True
    NonEditableAsLabel = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 0
    PasswordPrompt = False
  end
  object IWLabel1: TIWLabel
    Left = 72
    Top = 192
    Width = 218
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
    Caption = 'Enter the file name (without path):'
    RawText = False
  end
  object IWButton1: TIWButton
    Left = 72
    Top = 256
    Width = 185
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Create this file'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton1Click
  end
  object IWMemo1: TIWMemo
    Left = 64
    Top = 24
    Width = 649
    Height = 121
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
    TabOrder = 2
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This demo shows how you can run an external process (ConsoleApp.' +
        'exe)'
      'from within your ISAPI DLL'
      ''
      
        'ConsoleApp.exe was also created with Delphi, and it is a simple ' +
        'console applicaiton. '
      
        'It creates a text file on the same folder where the ISAPI DLL is' +
        ', and writes'
      'some text to it.')
  end
end
