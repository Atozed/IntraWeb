object ISFMain: TISFMain
  Left = 0
  Top = 0
  Width = 877
  Height = 531
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'Die Fly Die'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Filename = 
    'W:\source\IntraWeb6.0\Demos\Win32\Delphi\DieFlyDie\Files\grid_ba' +
    'ckground.gif'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  StyleSheet.Filename = 'styles.css'
  ShowHint = True
  XPTheme = True
  DesignLeft = 299
  DesignTop = 74
  object rectMain: TIWRectangle
    Left = 142
    Top = 69
    Width = 735
    Height = 462
    Cursor = crAuto
    Align = alClient
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
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectMain'
    Color = clWebWHITE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object lblWelcome: TIWLabel
    Left = 160
    Top = 104
    Width = 347
    Height = 29
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
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
    Font.Color = clWebOLIVE
    Font.FontFamily = 'Verdana'
    Font.Size = 18
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lblWelcome'
    Caption = 'Welcome to DieFlyDie.com'
    RawText = False
  end
  object txtWelcome: TIWText
    Left = 160
    Top = 144
    Width = 329
    Height = 161
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
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
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'txtWelcome'
    Lines.Strings = (
      'The best way to shop for fly hunting tools on the web!  '
      'DieFlyDie is a fictitious retailer that sells extraordinary '
      'anti-fly gear on its Web site. A simple look at some '
      'very serious requirements, DieFlyDie demonstrates '
      'how extraordinarily simple and fast it is to create powerful, '
      'scalable applications with Intraweb.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object lblPopular: TIWLabel
    Left = 160
    Top = 376
    Width = 330
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clWebMAROON
    Font.Color = clWebWHITE
    Font.Size = 10
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lblPopular'
    Caption = 'Our most popular products this week'
    RawText = False
  end
  object rectPopular: TIWRectangle
    Left = 160
    Top = 392
    Width = 330
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Font.Color = clWebBLACK
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'rectPopular'
    Color = clWebDARKGRAY
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object imgProduct: TIWImage
    Left = 560
    Top = 128
    Width = 241
    Height = 153
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BorderOptions.Color = clWebBLACK
    BorderOptions.Width = 1
    DoSubmitValidation = True
    ScriptEvents = <>
    TabOrder = -1
    UseSize = True
    FriendlyName = 'imgProduct'
    TransparentColor = clNone
    JpegOptions.CompressionQuality = 90
    JpegOptions.Performance = jpBestSpeed
    JpegOptions.ProgressiveEncoding = False
    JpegOptions.Smoothing = True
    OutputType = ioJPEG
  end
  object txtTest: TIWText
    Left = 544
    Top = 368
    Width = 313
    Height = 121
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    ConvertSpaces = False
    Font.Color = clNone
    Font.FontName = 'Verdana'
    Font.Size = 8
    Font.Style = []
    FriendlyName = 'txtTest'
    Lines.Strings = (
      'To give DieFlyDie a test spin, simply start'
      'browsing and add any items you want to your'
      'shopping cart. Click the <b>Documentation</b> link '
      '(left) at any point to learn what'#39's going on under'
      'the hood. ')
    RawText = True
    UseFrame = False
    WantReturns = True
  end
  inline LeftTree: TISFProductTree
    Left = 0
    Top = 69
    Width = 142
    Height = 462
    Align = alLeft
    Constraints.MaxWidth = 142
    Constraints.MinWidth = 142
    Color = clNone
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Height = 462
      inherited lnkSource: TIWLink
        Top = 443
      end
      inherited rectRight: TIWRectangle
        Height = 462
      end
    end
  end
  inline TopBar: TISFTopBar
    Left = 0
    Top = 0
    Width = 877
    Height = 69
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    Constraints.MaxHeight = 69
    Constraints.MinHeight = 69
    Constraints.MinWidth = 600
    Color = clNone
    ParentColor = False
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Width = 877
      TabOrder = 1
      inherited rectRedTop: TIWRectangle
        Width = 744
      end
      inherited edSearch: TIWEdit
        Left = 731
        TabOrder = 4
      end
      inherited imgSearchText: TIWImageFile
        Left = 648
      end
      inherited imgSearchButton: TIWImageFile
        Left = 856
      end
      inherited imgSignIn: TIWImageFile
        Left = 609
      end
      inherited imgAccount: TIWImageFile
        Left = 679
      end
      inherited imgCart: TIWImageFile
        Left = 761
      end
      inherited lnkSignIn: TIWLink
        Left = 622
        TabOrder = 2
      end
      inherited lnkAccount: TIWLink
        Left = 689
        TabOrder = 1
      end
      inherited lnkCart: TIWLink
        Left = 773
      end
      inherited imgServices: TIWImageFile
        Left = 807
      end
      inherited lnkServices: TIWLink
        Left = 820
        TabOrder = 3
      end
    end
  end
end
