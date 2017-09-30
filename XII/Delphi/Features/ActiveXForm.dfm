object formActiveX: TformActiveX
  Left = 0
  Top = 0
  Width = 624
  Height = 613
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'ActiveX Demonstration'
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
  object IWActiveX1: TIWActiveX
    Left = 36
    Top = 220
    Width = 469
    Height = 201
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
    ClassID = 'clsid:3986D41F-255B-42C2-9247-4893ED813BC2'
    CodeBase = '/Files/IWActiveX.cab'
    Declare = False
    FriendlyName = 'IWActiveX1'
    ForceActivation = False
    RenderEMBED = False
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 624
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
      Width = 624
      TabOrder = 1
      inherited IWMenu1: TIWMenu
        Width = 624
      end
    end
  end
end
