object formQuickTime: TformQuickTime
  Left = 0
  Top = 0
  Width = 637
  Height = 557
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'QuickTime Movie Demonstration'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWQuickTime1: TIWQuickTime
    Left = 108
    Top = 220
    Width = 345
    Height = 181
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
    AutoPlay = False
    BGColor = clWebBLACK
    Cache = False
    Controller = False
    FriendlyName = 'IWQuickTime1'
    Hidden = False
    KioskMode = False
    Loop = True
    PluginsPage = 'http://www.apple.com/quicktime/download/'
    MovFile.Filename = 'W:\source\IntraWeb6.0\Demos\Win32\Delphi\Features\Files\iw.mov'
    Pan = 0
    PlayEveryFrame = False
    Volume = 0
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 637
    Height = 26
    HorzScrollBar.Range = 185
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 468
    VertScrollBar.Visible = False
    Align = alTop
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 637
      TabOrder = 1
      inherited IWMenu1: TIWMenu
        Width = 637
      end
    end
  end
end
