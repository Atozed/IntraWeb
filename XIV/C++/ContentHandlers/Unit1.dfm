object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 972
  Height = 646
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
  object IWButton1: TIWButton
    Left = 24
    Top = 320
    Width = 305
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'External HTML document (uses TContentRedirect)'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 24
    Top = 232
    Width = 305
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Call Red Form (uses TContentForm class)'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    Left = 24
    Top = 272
    Width = 305
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Call Blue Form (also uses TContentForm)'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton3'
    ScriptEvents = <>
    TabOrder = 2
    OnClick = IWButton3Click
  end
  object IWMemo1: TIWMemo
    Left = 24
    Top = 25
    Width = 753
    Height = 176
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
    TabOrder = 3
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      'This demo shows the basic usage of new TContent* classes.'
      
        'These classes allow you to redirect any incoming request for an ' +
        'arbitrary URL'
      'or path to some registered Content Handler.'
      ''
      'How to use TContent* classe:'
      ''
      
        '1) Create a TContentBase descendant instance (check ServerContro' +
        'ller'#39's OnCreate event)'
      
        '2) Add it to the registered handlers list, using THandlers::Add(' +
        ') class method. (check ServerController'#39's OnCreate event)'
      
        '3) Create a link to your handler (check Button OnClick event han' +
        'dler code)')
  end
end
