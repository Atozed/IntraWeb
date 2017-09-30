object formTreeView: TformTreeView
  Left = 0
  Top = 0
  Width = 636
  Height = 557
  HorzScrollBar.Range = 625
  VertScrollBar.Range = 513
  Visible = False
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'Treeview Demonstration'
  SupportedBrowsers = [brNetscape7, brIE, brNetscape6]
  OnCreate = IWAppFormCreate
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 167
  DesignTop = 147
  object IWTreeView1: TIWTreeView
    Left = 0
    Top = 25
    Width = 161
    Height = 532
    Cursor = crAuto
    Align = alLeft
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
    FriendlyName = 'IWTreeView1'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    AutoIndent = True
    UseItemImages = True
    TreeViewImagesWidth = 16
    TreeViewImagesHeigth = 16
    UseFrame = False
    DoServerSidePlusMinus = False
    Items = <
      item
        Caption = 'Root'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView1Item0'
        Tag = 0
        Version = 1
        ParentItem = -1
      end
      item
        Caption = 'Item1'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView1Item1'
        Tag = 0
        Version = 1
        OnClick = IWTreeView1IWTreeView1Item0IWTreeView1Item1Click
        ParentItem = 0
      end
      item
        Caption = 'Item2'
        Expanded = True
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Name = 'IWTreeView1Item2'
        Tag = 0
        Version = 1
        OnClick = IWTreeView1IWTreeView1Item0IWTreeView1Item2Click
        ParentItem = 0
      end>
  end
  object IWText1: TIWText
    Left = 172
    Top = 40
    Width = 441
    Height = 121
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
      
        'TreeView items can be created either at design-time or at runtim' +
        'e.'
      ''
      'Item1 and Item2 have been created at design-time.'
      'To create a new item at runtime, click on Item2.'
      
        'This will associate the link to a message corresponding to that ' +
        'item.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object IWButton1: TIWButton
    Left = 176
    Top = 160
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
    Caption = 'Collapse'
    DoSubmitValidation = True
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 176
    Top = 212
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
    Caption = 'Expand'
    DoSubmitValidation = True
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    ScriptEvents = <>
    TabOrder = 2
    OnClick = IWButton2Click
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
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    TabStop = True
    inherited IWFrameRegion: TIWRegion
      Width = 636
      Height = 491
      TabOrder = 3
      inherited IWMenu1: TIWMenu
        Width = 636
      end
    end
  end
end
