object formChart: TformChart
  Left = 0
  Top = 0
  Width = 750
  Height = 562
  HorzScrollBar.Range = 689
  VertScrollBar.Range = 505
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'Dynamic Chart Demo'
  SupportedBrowsers = [brUnknown, brNetscape7, brIE, brOpera, brSafari, brIE4, brNetscape6, brNetscape4, brOther, brHTML32Test, brWMLTest, brXHTMLMPTest, brWAP]
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
  DesignLeft = 8
  DesignTop = 8
  object IWDynamicChartLegend1: TIWDynamicChartLegend
    Left = 16
    Top = 292
    Width = 209
    Height = 217
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
    FriendlyName = 'IWDynamicChartLegend1'
  end
  object IWLabel1: TIWLabel
    Left = 240
    Top = 300
    Width = 69
    Height = 16
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
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 'Horizontal:'
    RawText = False
  end
  object IWLabel2: TIWLabel
    Left = 240
    Top = 324
    Width = 52
    Height = 16
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
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel2'
    Caption = 'Vertical:'
    RawText = False
  end
  object IWButton7: TIWButton
    Left = 352
    Top = 376
    Width = 91
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
    Caption = 'Update Chart'
    DoSubmitValidation = True
    Color = 13160660
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton7'
    ScriptEvents = <
      item
        EventCode.Strings = (
          'GDEMOCHART.Draw();'
          'return true;')
        Event = 'onClick'
      end>
    TabOrder = 0
  end
  object cmboHorz: TIWComboBox
    Left = 352
    Top = 300
    Width = 121
    Height = 21
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <
      item
        EventCode.Strings = (
          'GDEMOCHART.HorzData = this.options[this.selectedIndex].text;'
          'return true;')
        Event = 'onChange'
      end>
    UseSize = False
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 2
    ItemIndex = -1
    Sorted = False
    FriendlyName = 'cmboHorz'
  end
  object cmboVert: TIWComboBox
    Left = 352
    Top = 324
    Width = 121
    Height = 21
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <
      item
        EventCode.Strings = (
          'GDEMOCHART.VertData = this.options[this.selectedIndex].text;'
          'return true;')
        Event = 'onChange'
      end>
    UseSize = False
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 3
    ItemIndex = -1
    Sorted = False
    FriendlyName = 'cmboVert'
  end
  object cmboData: TIWComboBox
    Left = 352
    Top = 420
    Width = 121
    Height = 21
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <>
    OnChange = cmboDataChange
    UseSize = False
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 4
    ItemIndex = 0
    Items.Strings = (
      'Static Data'
      'Master Table'
      'Order Table'
      'Parts Table')
    Sorted = False
    FriendlyName = 'cmboData'
  end
  object IWLabel3: TIWLabel
    Left = 240
    Top = 420
    Width = 80
    Height = 16
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
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel3'
    Caption = 'Select Data:'
    RawText = False
  end
  object IWComboBox1: TIWComboBox
    Left = 352
    Top = 348
    Width = 121
    Height = 21
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = False
    NoSelectionText = '-- No Selection --'
    Required = False
    RequireSelection = True
    ScriptEvents = <
      item
        EventCode.Strings = (
          'GDEMOCHART.Func = this.options[this.selectedIndex].text;'
          'return true;')
        Event = 'onChange'
      end>
    UseSize = False
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 6
    ItemIndex = 0
    Items.Strings = (
      'Sum'
      'Count'
      'Min'
      'Max'
      'Avg')
    Sorted = False
    FriendlyName = 'IWComboBox1'
  end
  object IWLabel4: TIWLabel
    Left = 240
    Top = 348
    Width = 58
    Height = 16
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
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel4'
    Caption = 'Function:'
    RawText = False
  end
  object DemoChart: TIWDynamicChart
    Left = 16
    Top = 36
    Width = 457
    Height = 250
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
    Colors.Strings = (
      'red'
      'blue'
      'green'
      'yellow'
      'brown')
    Data = dsetStaticData
    Legend = IWDynamicChartLegend1
    ValuesInBars = True
    FriendlyName = 'DemoChart'
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 750
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
      Width = 750
      Height = 491
      TabOrder = 7
      inherited IWMenu1: TIWMenu
        Width = 750
      end
    end
  end
  object dsetStaticData: TIWClientSideDataset
    ColumnNames.Strings = (
      'Sales'
      'Items Sold'
      'Month'
      'Seller'
      'Country')
    Data.Strings = (
      '41, 5, 1, '#39'John Smith'#39', '#39'Canada'#39
      '34, 3, 2, '#39'John Smith'#39', '#39'Canada'#39
      '14, 5, 3, '#39'John Smith'#39', '#39'Canada'#39
      '14, 4, 4, '#39'John Smith'#39', '#39'Canada'#39
      '12, 7, 5, '#39'John Smith'#39', '#39'Canada'#39
      '14, 5, 6, '#39'John Smith'#39', '#39'Canada'#39
      '15, 5, 7, '#39'John Smith'#39', '#39'Canada'#39
      '16, 5, 8, '#39'John Smith'#39', '#39'Canada'#39
      '12, 8, 9, '#39'John Smith'#39', '#39'Canada'#39
      '14, 3, 10, '#39'John Smith'#39', '#39'Canada'#39
      '51, 3, 11, '#39'John Smith'#39', '#39'Canada'#39
      '51, 5, 12, '#39'John Smith'#39', '#39'Canada'#39
      '35, 6, 1, '#39'Lisa Green'#39', '#39'Canada'#39
      '55, 5, 2, '#39'Lisa Green'#39', '#39'Canada'#39
      '75, 6, 3, '#39'Lisa Green'#39', '#39'Canada'#39
      '55, 8, 4, '#39'Lisa Green'#39', '#39'Canada'#39
      '55, 5, 5, '#39'Lisa Green'#39', '#39'Canada'#39
      '35, 7, 6, '#39'Lisa Green'#39', '#39'Canada'#39
      '75, 7, 7, '#39'Lisa Green'#39', '#39'Canada'#39
      '65, 4, 8, '#39'Lisa Green'#39', '#39'Canada'#39
      '85, 4, 9, '#39'Lisa Green'#39', '#39'Canada'#39
      '56, 6, 10, '#39'Lisa Green'#39', '#39'Canada'#39
      '56, 8, 11, '#39'Lisa Green'#39', '#39'Canada'#39
      '52, 3, 12, '#39'Lisa Green'#39', '#39'Canada'#39
      '11, 5, 1, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 7, 2, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 2, 3, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 6, 4, '#39'Bob Jones'#39', '#39'United States'#39
      '21, 7, 5, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 1, 6, '#39'Bob Jones'#39', '#39'United States'#39
      '51, 4, 7, '#39'Bob Jones'#39', '#39'United States'#39
      '61, 6, 8, '#39'Bob Jones'#39', '#39'United States'#39
      '21, 7, 9, '#39'Bob Jones'#39', '#39'United States'#39
      '41, 8, 10, '#39'Bob Jones'#39', '#39'United States'#39
      '11, 9, 11, '#39'Bob Jones'#39', '#39'United States'#39
      '11, 0, 12, '#39'Bob Jones'#39', '#39'United States'#39
      '54, 9, 1, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 3, 2, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 3, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 4, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 5, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 8, 6, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 9, 7, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 2, 8, '#39'Jim Crawford'#39', '#39'Canada'#39
      '54, 4, 9, '#39'Jim Crawford'#39', '#39'Canada'#39
      '64, 5, 10, '#39'Jim Crawford'#39', '#39'Canada'#39
      '16, 5, 11, '#39'Jim Crawford'#39', '#39'Canada'#39
      '42, 6, 12, '#39'Jim Crawford'#39', '#39'Canada'#39
      '46, 3, 1, '#39'David House'#39', '#39'United States'#39
      '46, 4, 2, '#39'David House'#39', '#39'United States'#39
      '26, 6, 3, '#39'David House'#39', '#39'United States'#39
      '46, 3, 4, '#39'David House'#39', '#39'United States'#39
      '56, 5, 5, '#39'David House'#39', '#39'United States'#39
      '66, 6, 6, '#39'David House'#39', '#39'United States'#39
      '26, 7, 7, '#39'David House'#39', '#39'United States'#39
      '46, 9, 8, '#39'David House'#39', '#39'United States'#39
      '16, 4, 9, '#39'David House'#39', '#39'United States'#39
      '16, 3, 10, '#39'David House'#39', '#39'United States'#39
      '56, 6, 11, '#39'David House'#39', '#39'United States'#39
      '56, 3, 12, '#39'David House'#39', '#39'United States'#39
      '53, 3, 1, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '53, 5, 2, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '33, 6, 3, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '43, 4, 4, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '53, 4, 5, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '55, 5, 6, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '53, 6, 7, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '66, 9, 8, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '63, 9, 9, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '23, 3, 10, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '31, 5, 11, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '34, 6, 12, '#39'Fernando Hernandez'#39', '#39'Mexico'#39
      '24, 8, 1, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '24, 6, 2, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '22, 5, 3, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '24, 3, 4, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '25, 4, 5, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '26, 7, 6, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '22, 8, 7, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '24, 4, 8, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '21, 3, 9, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '21, 6, 10, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '25, 2, 11, '#39'Francisco Hernandez'#39', '#39'Mexico'#39
      '25, 1, 12, '#39'Francisco Hernandez'#39', '#39'Mexico'#39)
    Left = 48
    Top = 52
  end
  object dsetMaster: TIWClientSideDatasetDBLink
    Left = 48
    Top = 100
  end
  object dsetOrder: TIWClientSideDatasetDBLink
    Left = 48
    Top = 148
  end
  object dsetParts: TIWClientSideDatasetDBLink
    Left = 48
    Top = 196
  end
end
