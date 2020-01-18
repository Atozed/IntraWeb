object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Width = 1226
  Height = 742
  RenderInvisibleControls = True
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  Css = 'iw-cool'
  DesignLeft = 8
  DesignTop = 8
  object IWGrid1: TIWGrid
    Left = 40
    Top = 112
    Width = 609
    Height = 529
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 0
    BorderStyle = tfDefault
    Caption = 'IWGrid1'
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = False
    UseSize = True
    InnerTableCss = 'cell-border'
    FriendlyName = 'IWGrid1'
    ColumnCount = 1
    RowCount = 1
    ShowEmptyCells = True
    ShowInvisibleRows = True
    ScrollToCurrentRow = False
  end
  object IWComboBox1: TIWComboBox
    Left = 40
    Top = 48
    Width = 249
    Height = 33
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RequireSelection = False
    OnChange = IWComboBox1Change
    TabOrder = 0
    ItemIndex = 0
    Items.Strings = (
      'Countries'
      'Customers')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel1: TIWLabel
    Left = 40
    Top = 21
    Width = 59
    Height = 21
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Display'
  end
  object IWLabel2: TIWLabel
    Left = 336
    Top = 21
    Width = 90
    Height = 21
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Table Style'
  end
  object cbStyle: TIWComboBox
    Left = 336
    Top = 48
    Width = 249
    Height = 33
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RequireSelection = False
    OnChange = cbStyleChange
    TabOrder = 1
    ItemIndex = -1
    Items.Strings = (
      'Hover'
      'Stripe'
      'Display Compact'
      'Order-Column'
      'Row-Border')
    FriendlyName = 'cbStyle'
    NoSelectionText = '< Default >'
  end
end
