object formMPEG: TformMPEG
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'MPEG Movie Demonstration'
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
  object IWMPEG1: TIWMPEG
    Left = 100
    Top = 151
    Width = 349
    Height = 173
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
    MPEGFile.Filename = 'W:\source\IntraWeb6.0\Demos\Win32\Delphi\Features\Files\iw.mpeg'
    AutoStart = False
    Declare = False
    FriendlyName = 'IWMPEG1'
    RenderEMBED = False
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 555
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
      Width = 555
      TabOrder = 1
      inherited IWMenu1: TIWMenu
        Width = 555
      end
    end
  end
end
