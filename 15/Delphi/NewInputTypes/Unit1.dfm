object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 1371
  Height = 993
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  ExtraHeader.Strings = (
    '<style>'
    ''
    'option:checked {'
    '  background: lime;'
    '  color: red;'
    '}'
    ''
    'option:hover {'
    '  background: lime;'
    '  color: blue'
    '}'
    ''
    'option:checked:focused{'
    '  background: lime;'
    '  color: blue'
    '}'
    ''
    '</style>')
  HiddenFields.Strings = (
    'HiddenInput1=')
  OnCreate = IWAppFormCreate
  ActiveControl = IWEdit1
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWEdit1: TIWEdit
    Left = 112
    Top = 79
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taCenter
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    DataType = stDate
  end
  object IWLabel1: TIWLabel
    Left = 384
    Top = 79
    Width = 112
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Date picker'
  end
  object IWEdit2: TIWEdit
    Left = 112
    Top = 161
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taCenter
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    DataType = stTime
  end
  object IWLabel2: TIWLabel
    Left = 384
    Top = 161
    Width = 114
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Time picker'
  end
  object IWEdit3: TIWEdit
    Left = 112
    Top = 411
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taRightJustify
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 2
    DataType = stNumber
    DataTypeOptions.Max = '100'
    DataTypeOptions.Min = '0'
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberType = ntInteger
  end
  object IWLabel3: TIWLabel
    Left = 382
    Top = 411
    Width = 181
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Spin Edit (Integer)'
  end
  object IWLabel4: TIWLabel
    Left = 656
    Top = 389
    Width = 369
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'NumberValidation = nvBrowserNative'
  end
  object IWLabel5: TIWLabel
    Left = 656
    Top = 419
    Width = 287
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Step =1, Min = 0, Max = 100'
  end
  object IWEdit4: TIWEdit
    Left = 112
    Top = 493
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taRightJustify
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 3
    DataType = stNumber
    DataTypeOptions.Min = '0'
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberType = ntInteger
    DataTypeOptions.NumberValidation = nvIntraWeb
  end
  object IWLabel6: TIWLabel
    Left = 384
    Top = 493
    Width = 220
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType = stNumber'
  end
  object IWLabel7: TIWLabel
    Left = 656
    Top = 471
    Width = 578
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'NumberType = ntInteger, NumberValidation = nvIntraWeb'
  end
  object IWLabel8: TIWLabel
    Left = 656
    Top = 576
    Width = 405
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Min = -10000, Max = 10000, FloatDP = 4'
  end
  object IWEdit5: TIWEdit
    Left = 112
    Top = 576
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taRightJustify
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 4
    DataType = stNumber
    DataTypeOptions.Max = '10000'
    DataTypeOptions.Min = '-10000'
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberValidation = nvIntraWeb
    DataTypeOptions.FloatDP = 4
  end
  object IWLabel9: TIWLabel
    Left = 384
    Top = 576
    Width = 339
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Numeric input with max/min check'
  end
  object IWLabel10: TIWLabel
    Left = 656
    Top = 546
    Width = 555
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'NumberType = ntFloat, NumberValidation = nvIntraWeb'
  end
  object IWLabel11: TIWLabel
    Left = 656
    Top = 501
    Width = 194
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Min = 0, Max = 100'
  end
  object IWEdit7: TIWEdit
    Left = 112
    Top = 328
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taCenter
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 8
    DataType = stRange
    DataTypeOptions.Max = '100'
    DataTypeOptions.Min = '0'
  end
  object IWLabel15: TIWLabel
    Left = 384
    Top = 328
    Width = 71
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Ranges'
  end
  object IWLabel16: TIWLabel
    Left = 656
    Top = 328
    Width = 194
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Min = 0, Max = 100'
  end
  object IWLabel17: TIWLabel
    Left = 656
    Top = 652
    Width = 305
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Min and Max are not applicable'
  end
  object IWEdit8: TIWEdit
    Left = 112
    Top = 652
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taCenter
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit6'
    SubmitOnAsyncEvent = True
    TabOrder = 9
    DataType = stNumber
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberValidation = nvIntraWeb
  end
  object IWLabel18: TIWLabel
    Left = 384
    Top = 652
    Width = 220
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType = stNumber'
  end
  object IWLabel19: TIWLabel
    Left = 656
    Top = 622
    Width = 551
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'NumberType = ntText, NumberValidation = nvIntraWeb'
  end
  object IWLabel20: TIWLabel
    Left = 382
    Top = 13
    Width = 192
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType property:'
  end
  object IWLabel21: TIWLabel
    Left = 656
    Top = 13
    Width = 267
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataTypeOptions property:'
  end
  object IWLabel22: TIWLabel
    Left = 112
    Top = 13
    Width = 201
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'New IWEdit features'
  end
  object IWButton1: TIWButton
    Left = 775
    Top = 792
    Width = 120
    Height = 30
    Visible = False
    Caption = 'IWButton1'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 10
    OnClick = IWButton1Click
  end
  object IWEdit9: TIWEdit
    Left = 112
    Top = 726
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taCenter
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 7
    DataTypeOptions.Max = '100'
    DataTypeOptions.Min = '0'
    DataTypeOptions.StringCase = scUppercase
  end
  object IWLabel23: TIWLabel
    Left = 384
    Top = 726
    Width = 292
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'String types upper/lower case'
  end
  object IWLabel24: TIWLabel
    Left = 656
    Top = 726
    Width = 256
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'StringCase = scUppercase'
  end
  object IWEdit10: TIWEdit
    Left = 112
    Top = 798
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taCenter
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 6
    DataType = stPassword
    DataTypeOptions.Max = '100'
    DataTypeOptions.Min = '0'
  end
  object IWLabel25: TIWLabel
    Left = 384
    Top = 798
    Width = 235
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType = stPassword'
  end
  object IWLabel26: TIWLabel
    Left = 656
    Top = 798
    Width = 36
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'N/A'
  end
  object IWLabel12: TIWLabel
    Left = 656
    Top = 242
    Width = 231
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Min = 0, Max = 200000'
  end
  object IWEdit6: TIWEdit
    Left = 112
    Top = 242
    Width = 200
    Height = 32
    StyleRenderOptions.RenderBorder = False
    Alignment = taRightJustify
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    FriendlyName = 'IWEdit6'
    SubmitOnAsyncEvent = True
    TabOrder = 5
    DataType = stNumber
    DataTypeOptions.Max = '10000'
    DataTypeOptions.Min = '-10000'
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberType = ntCurrency
    DataTypeOptions.NumberValidation = nvIntraWeb
  end
  object IWLabel13: TIWLabel
    Left = 384
    Top = 242
    Width = 283
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Currency + localized settings'
  end
  object IWLabel14: TIWLabel
    Left = 656
    Top = 212
    Width = 592
    Height = 24
    Visible = False
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'NumberType = ntCurrency, NumberValidation = nvIntraWeb'
  end
end
