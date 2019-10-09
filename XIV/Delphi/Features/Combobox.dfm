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
  OnCheckFormId = IWAppFormCheckFormId
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
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    RequireSelection = False
    OnChange = cmboNumbersChange
    UseSize = False
    NonEditableAsLabel = True
    TabOrder = 0
    ItemIndex = -1
    Items.Strings = (
      'One'
      'Two'
      'Three')
    FriendlyName = 'cmboNumbers'
    NoSelectionText = '-- No Selection --'
  end
  object lablNumber: TIWLabel
    Left = 324
    Top = 336
    Width = 100
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'lablNumber'
    Caption = 'No selection'
  end
  object IWLabel1: TIWLabel
    Left = 8
    Top = 32
    Width = 800
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'Here are some examples of server-side events, although some can ' +
      'be done without the need to send requests to the server'
  end
  object chckCheckbox: TIWCheckBox
    Left = 20
    Top = 64
    Width = 121
    Height = 21
    Cursor = crAuto
    Caption = 'Checkbox'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lablCheckbox'
    Caption = 'Unchecked'
  end
  object IWCheckBox1: TIWCheckBox
    Left = 12
    Top = 96
    Width = 121
    Height = 21
    Cursor = crAuto
    Caption = 'Cool Checkbox'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
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
    Font.Color = clWebYELLOW
    Font.Size = 10
    Font.Style = []
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
    Caption = 'Show Region'
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    SubmitOnAsyncEvent = True
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
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel4'
    Caption = 'This is a rectangle'
  end
  object IWButton1: TIWButton
    Left = 507
    Top = 256
    Width = 161
    Height = 57
    Caption = 'IWButton1'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 7
  end
  object IWButton2: TIWButton
    Left = 507
    Top = 340
    Width = 161
    Height = 57
    Css = 'my-button'
    Caption = 'IWButton1'
    Color = clWebYELLOW
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 8
  end
  object IWButton3: TIWButton
    Left = 507
    Top = 424
    Width = 161
    Height = 57
    Caption = 'IWButton1'
    Color = clWebBLUE
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 9
  end
  object IWCalendar1: TIWCalendar
    Left = 368
    Top = 80
    Width = 300
    Height = 150
    Css = ''
    BorderColors.Color = clNone
    BorderColors.Light = clNone
    BorderColors.Dark = clNone
    BGColor = clNone
    BorderSize = 1
    BorderStyle = tfDefault
    Caption = 'IWCalendar1'
    CellPadding = 0
    CellSpacing = 0
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FrameBuffer = 40
    Lines = tlAll
    UseFrame = False
    UseSize = True
    CalendarFont.Color = clNone
    CalendarFont.Size = 10
    CalendarFont.Style = []
    CalendarHeaderFont.Color = clNone
    CalendarHeaderFont.Size = 10
    CalendarHeaderFont.Style = []
    FriendlyName = 'IWCalendar1'
    StartDate = 43727.942867800930000000
    DisplayYear = True
  end
  object IWRegion1: TIWRegion
    Left = 12
    Top = 304
    Width = 297
    Height = 201
    HorzScrollBar.Range = 289
    VertScrollBar.Range = 185
    RenderInvisibleControls = False
    TabOrder = 0
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = 10674136
    ZIndex = -1
    object IWLabel2: TIWLabel
      Left = 8
      Top = 48
      Width = 138
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'IWLabel2'
      Caption = 'Horizontal Group Box'
    end
    object IWRadioGroup1: TIWRadioGroup
      Left = 11
      Top = 67
      Width = 166
      Height = 22
      SubmitOnAsyncEvent = True
      RawText = False
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
      TabOrder = 1
    end
    object IWLabel3: TIWLabel
      Left = 8
      Top = 97
      Width = 122
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      AutoSize = False
      FriendlyName = 'IWLabel3'
      Caption = 'Vertical Group Box'
    end
    object IWRadioGroup2: TIWRadioGroup
      Left = 8
      Top = 120
      Width = 97
      Height = 65
      SubmitOnAsyncEvent = True
      RawText = False
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
      TabOrder = 4
    end
    object IWText2: TIWText
      Left = 0
      Top = 0
      Width = 297
      Height = 41
      Align = alTop
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
    inherited IWFrameRegion: TIWRegion
      Width = 760
      Height = 491
      TabOrder = 6
      inherited IWMenu1: TIWMenu
        Width = 760
      end
    end
  end
end
