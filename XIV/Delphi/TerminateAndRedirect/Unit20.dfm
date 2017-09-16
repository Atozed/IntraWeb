object IWForm20: TIWForm20
  Left = 0
  Top = 0
  Width = 679
  Height = 516
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWButton1: TIWButton
    Left = 64
    Top = 48
    Width = 185
    Height = 25
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Terminate and redirect'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 2
    OnAsyncClick = IWButton1AsyncClick
  end
  object IWEdit1: TIWEdit
    Left = 96
    Top = 160
    Width = 249
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    FocusColor = clNone
    Editable = True
    NonEditableAsLabel = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 3
    PasswordPrompt = False
    Text = 'http://www.atozed.com'
  end
  object rbSite: TIWRadioButton
    Left = 64
    Top = 133
    Width = 137
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'To some other site:'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    Group = 'no group'
    Value = 'rbSite'
    FriendlyName = 'rbSite'
    SubmitOnAsyncEvent = True
  end
  object rbStatic: TIWRadioButton
    Left = 64
    Top = 96
    Width = 169
    Height = 21
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'To a static HTML page'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    Checked = True
    Group = 'no group'
    Value = 'rbStatic'
    FriendlyName = 'rbStatic'
    SubmitOnAsyncEvent = True
  end
end
