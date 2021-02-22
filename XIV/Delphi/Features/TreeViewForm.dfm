object formTreeView: TformTreeView
  Left = 0
  Top = 0
  Width = 636
  Height = 557
  HorzScrollBar.Range = 625
  VertScrollBar.Range = 513
  Visible = False
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Treeview Demonstration'
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWTreeView1: TIWTreeView
    Left = 0
    Top = 25
    Width = 161
    Height = 532
    Align = alLeft
    FriendlyName = 'IWTreeView1'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubCaption.Font.Color = clNone
    SubCaption.Font.Size = 10
    SubCaption.Font.Style = []
    AutoIndent = True
    ItemSpace.HorizontalSpace = 3
    ItemSpace.VerticalSpace = 3
    TreeViewImages.TreeViewImagesWidth = 16
    TreeViewImages.TreeViewImagesHeigth = 16
    UseItemImages = True
    UseFrame = False
    DoServerSidePlusMinus = False
    SelectedItemStyle.Font.Color = clNone
    SelectedItemStyle.Font.Size = 10
    SelectedItemStyle.Font.Style = []
    Items = <
      item
        Caption = 'Root'
        Expanded = True
        ItemImages.TreeViewImagesWidth = 16
        ItemImages.TreeViewImagesHeigth = 16
        Name = 'IWTreeView1Item0'
        Tag = 0
        Version = 1
        ParentItem = -1
      end
      item
        Caption = 'Item1'
        Expanded = True
        ItemImages.TreeViewImagesWidth = 16
        ItemImages.TreeViewImagesHeigth = 16
        Name = 'IWTreeView1Item1'
        Tag = 0
        Version = 1
        OnClick = IWTreeView1IWTreeView1Item0IWTreeView1Item1Click
        ParentItem = 0
      end
      item
        Caption = 'Item2'
        Expanded = True
        ItemImages.TreeViewImagesWidth = 16
        ItemImages.TreeViewImagesHeigth = 16
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
    Caption = 'Collapse'
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 176
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Expand'
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
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
