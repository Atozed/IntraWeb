object FormNonSecure: TFormNonSecure
  Left = 0
  Top = 0
  Width = 555
  Height = 396
  RenderInvisibleControls = False
  OnRender = IWAppFormRender
  AllowPageAccess = True
  ConnectionMode = cmNonSecure
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    555
    396)
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 24
    Top = 56
    Width = 190
    Height = 16
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'IWLabel1'
    Caption = 'FORM LEVEL SECURITY'
    RawText = False
  end
  object IWText1: TIWText
    Left = 22
    Top = 85
    Width = 537
    Height = 68
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This form does NOT require an SSL connection, and in fact does n' +
        'ot even permit SSL. '
      ''
      
        'If the user somehow trys to chnage the URL to HTTPS://..., then ' +
        'this form will raise an exception.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object linkNext: TIWLink
    Left = 24
    Top = 188
    Width = 545
    Height = 17
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    ScriptEvents = <>
    DoSubmitValidation = False
    FriendlyName = 'linkNext'
    OnClick = linkNextClick
    TabOrder = 0
    RawText = False
    Caption = 'Switch back to secure mode (previous form)'
  end
  object lblSessionID: TIWLabel
    Left = 16
    Top = 372
    Width = 133
    Height = 16
    Cursor = crAuto
    Anchors = [akLeft, akBottom]
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebNAVY
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = [fsBold]
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lblSessionID'
    Caption = 'Your Session ID is:'
    RawText = False
  end
  object IWLink1: TIWLink
    Left = 24
    Top = 224
    Width = 281
    Height = 17
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    ScriptEvents = <>
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink1Click
    TabOrder = 1
    RawText = False
    Caption = 'Back to main form'
  end
end
