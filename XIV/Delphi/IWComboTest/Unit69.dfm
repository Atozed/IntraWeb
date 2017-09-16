object IWForm69: TIWForm69
  Left = 0
  Top = 0
  Width = 654
  Height = 546
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    654
    546)
  DesignLeft = 8
  DesignTop = 8
  object IWComboBox1: TIWComboBox
    Left = 37
    Top = 47
    Width = 244
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    OnChange = IWComboBox1Change
    TabOrder = 0
    ItemIndex = -1
    Items.Strings = (
      'Item 1=" Value 1'
      'Item 2=> Value 2'
      'Item 3=< Value 3'
      'Item 4=? Value 4'
      'Item 5=% Value 5')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel1: TIWLabel
    Left = 37
    Top = 21
    Width = 331
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWComboBox1: ItemsHaveValues = True, OnChange'
  end
  object IWLabel2: TIWLabel
    Left = 37
    Top = 76
    Width = 334
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWComboBox2: ItemsHaveValues = False, OnChange'
  end
  object IWComboBox2: TIWComboBox
    Left = 37
    Top = 102
    Width = 244
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnChange = IWComboBox2Change
    TabOrder = 1
    ItemIndex = -1
    Items.Strings = (
      'Item 1'
      'Item 2'
      'Item 3'
      'Item 4'
      'Item 5')
    FriendlyName = 'IWComboBox2'
    NoSelectionText = '-- No Selection --'
  end
  object IWMemo1: TIWMemo
    Left = 37
    Top = 312
    Width = 592
    Height = 210
    Anchors = [akLeft, akTop, akRight, akBottom]
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 2
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
  object IWComboBox3: TIWComboBox
    Left = 37
    Top = 156
    Width = 244
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    OnAsyncChange = IWComboBox3AsyncChange
    TabOrder = 3
    ItemIndex = -1
    Items.Strings = (
      'Item 1=Value 1'
      'Item 2=Value 2'
      'Item 3=Value 3'
      'Item 4=Value 4'
      'Item 5=Value 5')
    FriendlyName = 'IWComboBox3'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel3: TIWLabel
    Left = 37
    Top = 134
    Width = 367
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWComboBox3: ItemsHaveValues = True, OnAsyncChange'
  end
  object IWLabel4: TIWLabel
    Left = 37
    Top = 190
    Width = 370
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'IWComboBox4: ItemsHaveValues = False, OnAsyncChange'
  end
  object IWComboBox4: TIWComboBox
    Left = 37
    Top = 212
    Width = 244
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    OnAsyncChange = IWComboBox4AsyncChange
    TabOrder = 4
    ItemIndex = -1
    Items.Strings = (
      'Item 1'
      'Item 2'
      'Item 3'
      'Item 4'
      'Item 5')
    FriendlyName = 'IWComboBox4'
    NoSelectionText = '-- No Selection --'
  end
  object IWButton1: TIWButton
    Left = 451
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Submit'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 5
    OnClick = IWButton1Click
  end
  object IWLabel5: TIWLabel
    Left = 37
    Top = 247
    Width = 597
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 
      'IWComboBox5: ItemsHaveValues = True, OnAsyncChange, filled at ru' +
      'ntime with unicode chars'
  end
  object IWComboBox5: TIWComboBox
    Left = 37
    Top = 269
    Width = 244
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    OnAsyncChange = IWComboBox5AsyncChange
    TabOrder = 6
    ItemIndex = -1
    FriendlyName = 'IWComboBox5'
    NoSelectionText = '-- No Selection --'
  end
end
