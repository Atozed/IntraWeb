object formComboboxes: TformComboboxes
  Left = 0
  Top = 0
  Width = 760
  Height = 544
  HorzScrollBar.Range = 728
  VertScrollBar.Range = 505
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Miscelleanous'
  BGColor = 10674136
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object cmboNumbers: TIWComboBox
    Left = 324
    Top = 304
    Width = 121
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    StyleRenderOptions.RenderSize = False
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
    RequireSelection = False
    ScriptEvents = <>
    OnChange = cmboNumbersChange
    UseSize = False
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    SubmitOnAsyncEvent = True
    TabOrder = 0
    ItemIndex = -1
    Items.Strings = (
      'One'
      'Two'
      'Three')
    Sorted = False
    FriendlyName = 'cmboNumbers'
  end
  object lablNumber: TIWLabel
    Left = 324
    Top = 336
    Width = 82
    Height = 16
    Cursor = crAuto
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
    FriendlyName = 'lablNumber'
    Caption = 'No selection'
    RawText = False
  end
  object IWLabel1: TIWLabel
    Left = 8
    Top = 32
    Width = 800
    Height = 16
    Cursor = crAuto
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
    Caption = 
      'Here are some examples of server-side events, although some can ' +
      'be done without the need to send requests to the server'
    RawText = False
  end
  object chckCheckbox: TIWCheckBox
    Left = 20
    Top = 64
    Width = 121
    Height = 21
    Cursor = crAuto
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
    Caption = 'Checkbox'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    ScriptEvents = <>
    DoSubmitValidation = True
    Style = stNormal
    TabOrder = 2
    OnClick = chckCheckboxClick
    Checked = False
    FriendlyName = 'chckCheckbox'
  end
  object lablCheckbox: TIWLabel
    Left = 204
    Top = 64
    Width = 75
    Height = 16
    Cursor = crAuto
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
    FriendlyName = 'lablCheckbox'
    Caption = 'Unchecked'
    RawText = False
  end
  object IWCheckBox1: TIWCheckBox
    Left = 12
    Top = 96
    Width = 121
    Height = 21
    Cursor = crAuto
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
    Caption = 'Cool Checkbox'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    ScriptEvents = <>
    DoSubmitValidation = True
    Style = stCool
    TabOrder = 3
    OnClick = IWCheckBox1Click
    Checked = False
    FriendlyName = 'IWCheckBox1'
  end
  object IWRectangle1: TIWRectangle
    Left = 16
    Top = 164
    Width = 200
    Height = 100
    Cursor = crAuto
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
    Font.Color = clWebYELLOW
    Font.Size = 10
    Font.Style = []
    BorderOptions.Color = clNone
    BorderOptions.Width = 0
    FriendlyName = 'IWRectangle1'
    Color = clWebPURPLE
    Alignment = taLeftJustify
    VAlign = vaMiddle
  end
  object IWCheckBox2: TIWCheckBox
    Left = 12
    Top = 280
    Width = 121
    Height = 21
    Cursor = crAuto
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
    Caption = 'Show Region'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
    ScriptEvents = <>
    DoSubmitValidation = True
    Style = stNormal
    TabOrder = 5
    OnClick = IWCheckBox2Click
    Checked = True
    FriendlyName = 'IWCheckBox2'
  end
  object IWLabel4: TIWLabel
    Left = 16
    Top = 140
    Width = 119
    Height = 16
    Cursor = crAuto
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
    Caption = 'This is a rectangle'
    RawText = False
  end
  object IWRegion1: TIWRegion
    Left = 12
    Top = 304
    Width = 297
    Height = 201
    Cursor = crAuto
    HorzScrollBar.Range = 289
    VertScrollBar.Range = 185
    RenderInvisibleControls = False
    TabOrder = 0
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 10674136
    ParentShowHint = False
    ShowHint = True
    ZIndex = -1
    Splitter = False
    object IWLabel2: TIWLabel
      Left = 8
      Top = 48
      Width = 138
      Height = 16
      Cursor = crAuto
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
      Caption = 'Horizontal Group Box'
      RawText = False
    end
    object IWRadioGroup1: TIWRadioGroup
      Left = 11
      Top = 67
      Width = 166
      Height = 22
      Cursor = crAuto
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
      SubmitOnAsyncEvent = True
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWRadioGroup1'
      ItemIndex = 0
      Items.Strings = (
        'Yes'
        'No'
        'Maybe')
      Layout = glHorizontal
      ScriptEvents = <>
      TabOrder = 1
    end
    object IWLabel3: TIWLabel
      Left = 8
      Top = 97
      Width = 122
      Height = 16
      Cursor = crAuto
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
      Caption = 'Vertical Group Box'
      RawText = False
    end
    object IWRadioGroup2: TIWRadioGroup
      Left = 8
      Top = 120
      Width = 97
      Height = 65
      Cursor = crAuto
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
      SubmitOnAsyncEvent = True
      Editable = True
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWRadioGroup2'
      ItemIndex = 0
      Items.Strings = (
        'Yes'
        'No'
        'Maybe')
      Layout = glVertical
      ScriptEvents = <>
      TabOrder = 4
    end
    object IWText2: TIWText
      Left = 0
      Top = 0
      Width = 297
      Height = 41
      Cursor = crAuto
      Align = alTop
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
      Font.Color = clWebPURPLE
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWText2'
      Lines.Strings = (
        'These controls are on a region (like a panel)'
        'which can be controlled seperately.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
  end
  inline framMenu1: TframMenu
    Left = 0
    Top = 0
    Width = 760
    Height = 26
    HorzScrollBar.Range = 193
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 491
    VertScrollBar.Visible = False
    Align = alTop
    Color = 10674136
    ParentColor = False
    TabOrder = 1
    TabStop = True
    ExplicitWidth = 760
    inherited IWFrameRegion: TIWRegion
      Width = 760
      Height = 491
      TabOrder = 6
      ExplicitWidth = 760
      ExplicitHeight = 491
      inherited IWMenu1: TIWMenu
        Width = 760
        ExplicitWidth = 760
      end
    end
    inherited IWImageList1: TIWImageList
      Bitmap = {
        494C0101010005000C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
        0000000000003600000028000000400000001000000001002000000000000010
        0000000000000000000000000000000000008484840084848400848484008484
        8400848484008484840084848400848484008484840084848400FFFFFF00C6C6
        C60084848400C6C6C600FFFFFF00C6C6C6000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000008484840084848400848484008484
        840084848400848484008484840084848400848484008484840084848400FFFF
        FF0084848400FFFFFF0084848400848484000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000008400000084000000840000008400
        00000000000000000000848484008484840084848400FFFFFF00FFFFFF00FFFF
        FF00840000008400000084000000840000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        0000FF00000084000000000000000000000084848400FFFFFF00FFFFFF00FFFF
        FF00840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        000084000000FF0000008400000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        0000FF00000084000000FF00000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
        0000840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
        FF00840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        000084000000FF0000008400000000000000FFFFFF00FFFF0000FFFFFF00FFFF
        0000840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        0000FF00000084000000FF00000000000000FFFF0000FFFFFF00FFFF0000FFFF
        FF00840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008400
        0000840000008400000084000000840000008400000084000000840000008400
        0000840000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000840000008400000084000000840000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000424D3E000000000000003E000000
        2800000040000000100000000100010000000000800000000000000000000000
        000000000000000000000000FFFFFF0000000000000000000000000000000000
        0000000000000000E007000000000000E007000000000000E007000000000000
        E007000000000000E007000000000000E007000000000000E007000000000000
        E007000000000000FFFF000000000000F81F000000000000F81F000000000000
        F81F000000000000FFFF00000000000000000000000000000000000000000000
        000000000000}
    end
  end
end
