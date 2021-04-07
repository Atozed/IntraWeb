object IWForm71: TIWForm71
  Left = 0
  Top = 0
  Width = 1267
  Height = 809
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  OnDestroy = IWAppFormDestroy
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWRegion1: TIWRegion
    Left = 24
    Top = 14
    Width = 1209
    Height = 763
    RenderInvisibleControls = True
    ZIndex = 10000
    object IWLabel2: TIWLabel
      Left = 56
      Top = 80
      Width = 385
      Height = 24
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      ForControl = cbSimpleList
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Simple list, search box, clear is allowed'
    end
    object cbSimpleList: TIWSelect
      Left = 56
      Top = 118
      Width = 520
      Height = 33
      ZIndex = 11000
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      RequireSelection = False
      SelectOptions = [soAllowClear, soCloseOnSelect, soPlaceholder]
      MultiSelect = True
      SelectMinCountForSearch = 0
      ItemIndex = -1
      FriendlyName = 'cbSimpleList'
      NoSelectionText = 'Please select one'
    end
    object IWLabel3: TIWLabel
      Left = 56
      Top = 304
      Width = 528
      Height = 24
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      ForControl = cbListMinInput
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'List with minimum input required, clear is not allowed'
    end
    object cbListMinInput: TIWSelect
      Left = 56
      Top = 342
      Width = 520
      Height = 33
      ZIndex = 11000
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      RequireSelection = False
      SelectOptions = [soCloseOnSelect, soPlaceholder]
      MultiSelect = True
      SelectMinCountForSearch = 0
      ItemIndex = -1
      FriendlyName = 'cbListMinInput'
      NoSelectionText = 'Please select one'
    end
    object IWLabel4: TIWLabel
      Left = 56
      Top = 416
      Width = 213
      Height = 24
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      ForControl = cbMulitple
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Multiple Selection List'
    end
    object cbMulitple: TIWSelect
      Left = 56
      Top = 451
      Width = 520
      Height = 33
      ZIndex = 11000
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      RequireSelection = False
      SelectOptions = [soAllowClear, soCloseOnSelect, soPlaceholder]
      MultiSelect = True
      SelectMinCountForSearch = 0
      ItemIndex = -1
      FriendlyName = 'cbMulitple'
      NoSelectionText = 'Please select one o more from the list'
    end
    object IWLabel5: TIWLabel
      Left = 56
      Top = 525
      Width = 503
      Height = 24
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      ForControl = cbMulitpleMinInput
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Multiple Selection List with minimum input required'
    end
    object cbMulitpleMinInput: TIWSelect
      Left = 56
      Top = 555
      Width = 520
      Height = 33
      ZIndex = 11000
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      RequireSelection = False
      SelectOptions = [soCloseOnSelect, soPlaceholder]
      MultiSelect = True
      SelectMinCountForSearch = 0
      ItemIndex = -1
      FriendlyName = 'cbMulitpleMinInput'
      NoSelectionText = 'Please select one o more from the list'
    end
    object IWLabel1: TIWLabel
      Left = 56
      Top = 625
      Width = 569
      Height = 24
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Server Side (used for huge list, always requires min input)'
    end
    object cbServerSide: TIWSelect
      Left = 56
      Top = 661
      Width = 520
      Height = 33
      ZIndex = 11000
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      RequireSelection = False
      SelectOptions = [soAllowClear, soCloseOnSelect, soPlaceholder, soServerSide]
      OnAsyncLookupList = cbServerSideAsyncLookupList
      SelectMinInputLength = 2
      ItemIndex = -1
      FriendlyName = 'cbServerSide'
      NoSelectionText = 'Please select one'
    end
    object IWText1: TIWText
      Left = 56
      Top = 9
      Width = 1049
      Height = 56
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      FriendlyName = 'IWText1'
      Lines.Strings = (
        
          'This demo shows many features of the new TIWSelect control, whic' +
          'h is based on the nice Select2 JavaScript control')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object IWButton4: TIWButton
      Left = 640
      Top = 118
      Width = 209
      Height = 33
      Caption = 'Set Selected Value'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton4'
      OnAsyncClick = IWButton4AsyncClick
    end
    object IWButton7: TIWButton
      Left = 640
      Top = 342
      Width = 209
      Height = 33
      Caption = 'Set Item Index'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton4'
      OnAsyncClick = IWButton7AsyncClick
    end
    object IWButton8: TIWButton
      Left = 640
      Top = 451
      Width = 209
      Height = 33
      Caption = 'Set Selected Values'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton4'
      OnAsyncClick = IWButton8AsyncClick
    end
    object IWButton9: TIWButton
      Left = 640
      Top = 555
      Width = 209
      Height = 33
      Caption = 'Set Selected Items'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton4'
      OnAsyncClick = IWButton9AsyncClick
    end
    object IWButton10: TIWButton
      Left = 640
      Top = 661
      Width = 209
      Height = 33
      Caption = 'Clear selection'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton4'
      OnAsyncClick = IWButton10AsyncClick
    end
    object IWLabel6: TIWLabel
      Left = 56
      Top = 192
      Width = 238
      Height = 24
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      ForControl = cbSmallList
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Small list, no search box'
    end
    object cbSmallList: TIWSelect
      Left = 56
      Top = 230
      Width = 520
      Height = 33
      ZIndex = 11000
      StyleRenderOptions.RenderBorder = False
      Font.Color = clNone
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = []
      RequireSelection = False
      SelectOptions = [soCloseOnSelect, soPlaceholder]
      MultiSelect = True
      SelectMinCountForSearch = 0
      ItemIndex = -1
      FriendlyName = 'cbSmallList'
      NoSelectionText = 'Please select one'
    end
    object IWButton1: TIWButton
      Left = 640
      Top = 230
      Width = 209
      Height = 33
      Caption = 'Toggle Visibility'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton4'
      OnAsyncClick = IWButton1AsyncClick
    end
  end
end
