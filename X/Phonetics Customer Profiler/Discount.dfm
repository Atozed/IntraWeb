object formDiscount: TformDiscount
  Left = 0
  Top = 0
  Width = 414
  Height = 307
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brNetscape6]
  ActiveControl = lboxCreditUnion
  BrowserSecurityCheck = True
  Background.Filename = 'background.gif'
  Background.Fixed = True
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 309
  DesignTop = 180
  object lablCreditUnion: TIWLabel
    Left = 8
    Top = 8
    Width = 265
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    AutoSize = False
    FriendlyName = 'lablCreditUnion'
    Caption = 'Which credit union are you a member of?'
    RawText = False
  end
  object lablPromoCode: TIWLabel
    Left = 8
    Top = 168
    Width = 399
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    AutoSize = False
    FriendlyName = 'lablPromoCode'
    Caption = 'Please enter your promotional code to validate your discount:'
    RawText = False
  end
  object lboxCreditUnion: TIWListbox
    Left = 32
    Top = 32
    Width = 265
    Height = 121
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
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
    UseSize = False
    DoSubmitValidation = True
    Editable = True
    TabOrder = 0
    FriendlyName = 'lboxCreditUnion'
    ItemIndex = 0
    Items.Strings = (
      'AFG'
      'Eastman'
      'IBM'
      'Intel'
      'Liberty Credit'
      'Motorola'
      'National Credit'
      'Washington Credit')
    MultiSelect = False
    Sorted = True
  end
  object editPromoCode: TIWEdit
    Left = 32
    Top = 192
    Width = 121
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    TabOrder = 1
    PasswordPrompt = False
  end
  object butnNext: TIWButton
    Left = 192
    Top = 224
    Width = 75
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Next'
    DoSubmitValidation = True
    Color = 13160660
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'butnNext'
    ScriptEvents = <>
    TabOrder = 2
    OnClick = butnNextClick
  end
  object btnStartOver: TIWButton
    Left = 16
    Top = 272
    Width = 75
    Height = 24
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Start over'
    DoSubmitValidation = True
    Color = 13160660
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'butnNext'
    ScriptEvents = <>
    TabOrder = 3
    OnClick = btnStartOverClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 120
    Top = 224
  end
end
