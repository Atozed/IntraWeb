object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 1371
  Height = 795
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
  ActiveControl = IWEdit1
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
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
    TabOrder = 0
    DataType = stDate
  end
  object IWLabel1: TIWLabel
    Left = 384
    Top = 79
    Width = 190
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType = stDate'
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
    Width = 192
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType = stTime'
  end
  object IWEdit3: TIWEdit
    Left = 112
    Top = 243
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
    Top = 243
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
  object IWLabel4: TIWLabel
    Left = 656
    Top = 221
    Width = 369
    Height = 24
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
    Top = 251
    Width = 287
    Height = 24
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
    Top = 325
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
    DataTypeOptions.Max = '100'
    DataTypeOptions.Min = '0'
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberType = ntInteger
    DataTypeOptions.NumberValidation = nvIntraWeb
  end
  object IWLabel6: TIWLabel
    Left = 384
    Top = 325
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
    Top = 303
    Width = 578
    Height = 24
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
    Top = 408
    Width = 405
    Height = 24
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
    Top = 408
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
    Top = 408
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
  object IWLabel10: TIWLabel
    Left = 656
    Top = 378
    Width = 555
    Height = 24
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
    Top = 333
    Width = 194
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Min = 0, Max = 100'
  end
  object IWLabel12: TIWLabel
    Left = 656
    Top = 490
    Width = 231
    Height = 24
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
    Top = 490
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
    Top = 490
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
  object IWLabel14: TIWLabel
    Left = 656
    Top = 460
    Width = 592
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'NumberType = ntCurrency, NumberValidation = nvIntraWeb'
  end
  object IWEdit7: TIWEdit
    Left = 112
    Top = 655
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
    DataType = stRange
    DataTypeOptions.Max = '100'
    DataTypeOptions.Min = '0'
  end
  object IWLabel15: TIWLabel
    Left = 384
    Top = 655
    Width = 204
    Height = 24
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'DataType = stRange'
  end
  object IWLabel16: TIWLabel
    Left = 656
    Top = 655
    Width = 194
    Height = 24
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
    Top = 572
    Width = 305
    Height = 24
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
    Top = 572
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
    TabOrder = 6
    DataType = stNumber
    DataTypeOptions.Step = '1'
    DataTypeOptions.NumberValidation = nvIntraWeb
  end
  object IWLabel18: TIWLabel
    Left = 384
    Top = 572
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
    Top = 542
    Width = 551
    Height = 24
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
    Font.Color = clNone
    Font.FontFamily = 'Tahoma, Geneva, sans-serif'
    Font.Size = 12
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'New IWEdit features'
  end
end
