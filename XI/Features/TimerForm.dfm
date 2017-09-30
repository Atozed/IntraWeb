object formTimer: TformTimer
  Left = 0
  Top = 0
  Width = 729
  Height = 530
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'Timer Demo'
  SupportedBrowsers = [brNetscape7, brIE, brNetscape6]
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  UpdateMode = umPartial
  DesignLeft = 8
  DesignTop = 8
  object IWText1: TIWText
    Left = 20
    Top = 52
    Width = 409
    Height = 89
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
      'This page is automatically submited by a timer every 2 seconds.'
      ''
      'You can use this to automatically submit data, or refresh '
      'a page.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object lablCount: TIWLabel
    Left = 20
    Top = 168
    Width = 507
    Height = 29
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
    Font.Color = clWebBLUE
    Font.Size = 18
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lablCount'
    Caption = 'This page has been auto refreshed x times.'
    RawText = False
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 729
    Height = 29
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 729
      Height = 491
      inherited IWMenu1: TIWMenu
        Width = 729
      end
    end
  end
  object IWTimer1: TIWTimer
    Enabled = True
    Interval = 2000
    OnTimer = IWTimer1Timer
    Left = 388
    Top = 76
  end
end
