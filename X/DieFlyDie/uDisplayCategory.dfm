object ISFDisplayCategory: TISFDisplayCategory
  Left = 0
  Top = 0
  Width = 747
  Height = 535
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
  DesignLeft = 211
  DesignTop = 108
  object rectMain: TIWRectangle
    Left = 142
    Top = 69
    Width = 605
    Height = 466
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
  inline TopBar: TISFTopBar
    Left = 0
    Top = 0
    Width = 747
    Height = 69
    HorzScrollBar.Visible = False
    VertScrollBar.Visible = False
    Align = alTop
    Constraints.MaxHeight = 69
    Constraints.MinHeight = 69
    Constraints.MinWidth = 600
    Color = clNone
    ParentColor = False
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Width = 747
      inherited rectRedTop: TIWRectangle
        Width = 614
      end
      inherited edSearch: TIWEdit
        Left = 601
        TabOrder = 4
      end
      inherited imgSearchText: TIWImageFile
        Left = 518
      end
      inherited imgSearchButton: TIWImageFile
        Left = 726
      end
      inherited imgSignIn: TIWImageFile
        Left = 503
      end
      inherited imgAccount: TIWImageFile
        Left = 557
      end
      inherited imgCart: TIWImageFile
        Left = 631
      end
      inherited lnkSignIn: TIWLink
        Left = 508
        TabOrder = 2
      end
      inherited lnkAccount: TIWLink
        Left = 567
        TabOrder = 1
      end
      inherited lnkCart: TIWLink
        Left = 643
      end
      inherited imgServices: TIWImageFile
        Left = 677
      end
      inherited lnkServices: TIWLink
        Left = 684
        TabOrder = 3
      end
    end
  end
  inline LeftTree: TISFProductTree
    Left = 0
    Top = 69
    Width = 142
    Height = 466
    Align = alLeft
    Constraints.MaxWidth = 142
    Constraints.MinWidth = 142
    Color = clBlack
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    inherited IWFrameRegion: TIWRegion
      Height = 466
      TabOrder = 1
      inherited lnkSource: TIWLink
        Top = 449
      end
      inherited rectRight: TIWRectangle
        Height = 466
      end
    end
  end
end
