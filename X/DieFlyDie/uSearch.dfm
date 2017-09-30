object ISFSearch: TISFSearch
  Left = 0
  Top = 0
  Width = 856
  Height = 447
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brNetscape6]
  OnCreate = IWAppFormCreate
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
  DesignLeft = 99
  DesignTop = 133
  object rectMain: TIWRectangle
    Left = 142
    Top = 69
    Width = 714
    Height = 378
    Cursor = crAuto
    Align = alClient
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
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
  inline LeftTree: TISFProductTree
    Left = 0
    Top = 69
    Width = 142
    Height = 378
    Align = alLeft
    Constraints.MaxWidth = 142
    Constraints.MinWidth = 142
    Color = clNone
    ParentColor = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    inherited IWFrameRegion: TIWRegion
      Height = 378
      TabOrder = 1
      inherited lnkSource: TIWLink
        Top = 359
      end
      inherited rectRight: TIWRectangle
        Height = 378
      end
    end
  end
  inline TopBar: TISFTopBar
    Left = 0
    Top = 0
    Width = 856
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
      Width = 856
      TabOrder = 2
      inherited imgSloganTop: TIWImageFile
        TabOrder = 11
      end
      inherited rectRedTop: TIWRectangle
        Width = 723
      end
      inherited edSearch: TIWEdit
        Left = 710
        TabOrder = 10
      end
      inherited imgSearchText: TIWImageFile
        Left = 627
        TabOrder = 9
      end
      inherited imgSearchButton: TIWImageFile
        Left = 835
        TabOrder = 14
      end
      inherited imgSignIn: TIWImageFile
        Left = 612
        TabOrder = 13
      end
      inherited imgAccount: TIWImageFile
        Left = 666
        TabOrder = 12
      end
      inherited imgCart: TIWImageFile
        Left = 740
        TabOrder = 8
      end
      inherited lnkSignIn: TIWLink
        Left = 617
        TabOrder = 4
      end
      inherited lnkAccount: TIWLink
        Left = 676
        TabOrder = 3
      end
      inherited lnkCart: TIWLink
        Left = 752
        TabOrder = 2
      end
      inherited imgServices: TIWImageFile
        Left = 786
        TabOrder = 7
      end
      inherited lnkServices: TIWLink
        Left = 783
        TabOrder = 6
      end
      inherited imgSloganBottom: TIWImageFile
        TabOrder = 5
      end
    end
  end
end
