object formQuestion3: TformQuestion3
  Left = 0
  Top = 0
  Width = 348
  Height = 302
  Visible = False
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brNetscape7, brNetscape6]
  ActiveControl = cmboType
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
  DesignLeft = 338
  DesignTop = 189
  object textPrompt1: TIWText
    Left = 16
    Top = 8
    Width = 313
    Height = 33
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'textPrompt1'
    Lines.Strings = (
      'Do you call mostly inside or outside of your area '
      'code on your cell phone?')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object cmboType: TIWComboBox
    Left = 40
    Top = 48
    Width = 121
    Height = 21
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
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    TabOrder = 0
    ItemIndex = 0
    Items.Strings = (
      'Inside'
      'Outside')
    Sorted = False
    FriendlyName = 'cmboType'
  end
  object textPrompt2: TIWText
    Left = 16
    Top = 72
    Width = 313
    Height = 49
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'textPrompt2'
    Lines.Strings = (
      'Do your currently own a phone you would like to '
      'use, or would you like us to quote you on leasing '
      'or selling you a phone?')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object textPrompt3: TIWText
    Left = 16
    Top = 160
    Width = 313
    Height = 41
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    BGColor = clNone
    ConvertSpaces = True
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'textPrompt3'
    Lines.Strings = (
      'Are you eligible for a package discount through '
      'your employer or credit union? ')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object cmboPhone: TIWComboBox
    Left = 40
    Top = 128
    Width = 121
    Height = 21
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
    Style = stNormal
    ButtonColor = clBtnFace
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    TabOrder = 1
    ItemIndex = 0
    Items.Strings = (
      'Own'
      'Buy'
      'Lease')
    Sorted = False
    FriendlyName = 'cmboPhone'
  end
  object chckDiscount: TIWCheckBox
    Left = 40
    Top = 203
    Width = 121
    Height = 21
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Caption = 'Discount'
    Editable = True
    Font.Color = clWindowText
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    DoSubmitValidation = True
    Style = stNormal
    TabOrder = 2
    Checked = False
    FriendlyName = 'chckDiscount'
  end
  object butnNext: TIWButton
    Left = 200
    Top = 240
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
    TabOrder = 3
    OnClick = butnNextClick
  end
  object btnStartOver: TIWButton
    Left = 16
    Top = 271
    Width = 75
    Height = 25
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
    TabOrder = 4
    OnClick = btnStartOverClick
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 48
    Top = 232
  end
end
