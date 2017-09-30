object formFileUploadDemo: TformFileUploadDemo
  Left = 0
  Top = 0
  Width = 636
  Height = 557
  HorzScrollBar.Range = 625
  VertScrollBar.Range = 513
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'File Upload Demonstration'
  SupportedBrowsers = [brNetscape7, brIE, brNetscape6]
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = False
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWText1: TIWText
    Left = 12
    Top = 48
    Width = 409
    Height = 221
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
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      'This form demonstrates how easy it is to'
      'upload files via the browser using IntraWeb'
      ''
      'Just place a TIWFile (or the corresponding TIWDBFile'
      'if you require a data-aware version) and IntraWeb does'
      'the rest.'
      ''
      'To access the filename or content-type use the properties'
      'like any other IW control. You can also save the file to either'
      'a file on disk or a stream using SaveToFile and SaveToStream'
      'respectively')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWLabel1: TIWLabel
    Left = 12
    Top = 272
    Width = 264
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
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 'Click the Browse button to choose the file'
    RawText = False
  end
  object lablFileInfo: TIWLabel
    Left = 12
    Top = 444
    Width = 409
    Height = 61
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
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 10
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lablFileInfo'
    Caption = 'lablFileInfo'
    RawText = False
  end
  object IWFile1: TIWFile
    Left = 12
    Top = 288
    Width = 393
    Height = 101
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
    TabOrder = 0
    FriendlyName = 'IWFile1'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    BGColor = clNone
    ButtonHeight = 21
    FrameBGColor = clNone
    StatusUpdateInterval = 1000
  end
  object IWButton1: TIWButton
    Left = 12
    Top = 395
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
    Caption = 'Upload'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWButton1Click
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 636
    Height = 25
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    ExplicitWidth = 636
    ExplicitHeight = 25
    inherited IWFrameRegion: TIWRegion
      Width = 636
      Height = 491
      TabOrder = 2
      ExplicitWidth = 636
      ExplicitHeight = 491
      inherited IWMenu1: TIWMenu
        Width = 636
        ExplicitWidth = 636
      end
    end
  end
end
