object IWForm6: TIWForm6
  Left = 0
  Top = 0
  Width = 1045
  Height = 828
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWComboBox1: TIWComboBox
    Left = 56
    Top = 65
    Width = 377
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    ItemIndex = -1
    Items.Strings = (
      'Item 1=Value 1'
      'Item   2=Value  2'
      'Item    3=Value   3'
      'Item     4=Value    4')
    FriendlyName = 'IWComboBox1'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel1: TIWLabel
    Left = 56
    Top = 43
    Width = 271
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = True'
  end
  object IWComboBox2: TIWComboBox
    Left = 56
    Top = 129
    Width = 377
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemIndex = -1
    Items.Strings = (
      'Item 1=Value 1'
      'Item   2=Value  2'
      'Item    3=Value   3'
      'Item     4=Value    4')
    FriendlyName = 'IWComboBox2'
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel2: TIWLabel
    Left = 56
    Top = 107
    Width = 275
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = False'
  end
  object IWLabel3: TIWLabel
    Left = 56
    Top = 171
    Width = 408
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = True, Filled in Async Event'
  end
  object IWComboBox3: TIWComboBox
    Left = 56
    Top = 193
    Width = 377
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    ItemIndex = -1
    FriendlyName = 'IWComboBox3'
    NoSelectionText = '-- No Selection --'
  end
  object IWButton1: TIWButton
    Left = 464
    Top = 184
    Width = 120
    Height = 30
    Caption = 'Fill it'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWLabel4: TIWLabel
    Left = 56
    Top = 243
    Width = 401
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = True, Filled in Sync Event'
  end
  object IWComboBox4: TIWComboBox
    Left = 56
    Top = 265
    Width = 377
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    ItemIndex = -1
    FriendlyName = 'IWComboBox4'
    NoSelectionText = '-- No Selection --'
  end
  object IWButton2: TIWButton
    Left = 464
    Top = 256
    Width = 120
    Height = 30
    Caption = 'Fill it'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnClick = IWButton2Click
  end
  object IWLabel5: TIWLabel
    Left = 56
    Top = 315
    Width = 411
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = False, Filled in Async Event'
  end
  object IWComboBox5: TIWComboBox
    Left = 56
    Top = 337
    Width = 377
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemIndex = -1
    FriendlyName = 'IWComboBox5'
    NoSelectionText = '-- No Selection --'
  end
  object IWButton3: TIWButton
    Left = 464
    Top = 328
    Width = 120
    Height = 30
    Caption = 'Fill it'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWLabel6: TIWLabel
    Left = 56
    Top = 387
    Width = 404
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = False, Filled in Sync Event'
  end
  object IWComboBox6: TIWComboBox
    Left = 56
    Top = 409
    Width = 377
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemIndex = -1
    FriendlyName = 'IWComboBox6'
    NoSelectionText = '-- No Selection --'
  end
  object IWButton4: TIWButton
    Left = 464
    Top = 400
    Width = 120
    Height = 30
    Caption = 'Fill it'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    OnClick = IWButton4Click
  end
  object IWListbox1: TIWListbox
    Left = 56
    Top = 465
    Width = 377
    Height = 108
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    ItemsHaveValues = True
    FriendlyName = 'IWListbox1'
    Items.Strings = (
      'Item 1=Value 1'
      'Item   2=Value  2'
      'Item    3=Value   3'
      'Item     4=Value    4')
    NoSelectionText = '-- No Selection --'
  end
  object IWLabel7: TIWLabel
    Left = 56
    Top = 443
    Width = 271
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = True'
  end
  object IWLabel8: TIWLabel
    Left = 56
    Top = 579
    Width = 275
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Monospaced font. ItemsHaveValues = False'
  end
  object IWListbox2: TIWListbox
    Left = 56
    Top = 601
    Width = 377
    Height = 104
    Font.Color = clNone
    Font.FontName = 'Courier New'
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWListbox1'
    Items.Strings = (
      'Item 1=Value 1'
      'Item   2=Value  2'
      'Item    3=Value   3'
      'Item     4=Value    4')
    NoSelectionText = '-- No Selection --'
  end
end
