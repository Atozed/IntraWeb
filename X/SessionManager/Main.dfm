object FormMain: TFormMain
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  OnRender = IWAppFormRender
  ConnectionMode = cmAny
  Title = 'Session Manager'
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    555
    400)
  DesignLeft = 392
  DesignTop = 168
  object buttonRefresh: TIWButton
    Left = 472
    Top = 32
    Width = 75
    Height = 25
    Cursor = crAuto
    Anchors = [akTop, akRight]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Refresh'
    DoSubmitValidation = False
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'buttonRefresh'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = buttonRefreshClick
  end
  object buttonTerminate: TIWButton
    Left = 472
    Top = 64
    Width = 75
    Height = 25
    Cursor = crAuto
    Anchors = [akTop, akRight]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Terminate'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'buttonTerminate'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = buttonTerminateClick
  end
  object buttonExit: TIWButton
    Left = 472
    Top = 96
    Width = 75
    Height = 25
    Cursor = crAuto
    Anchors = [akTop, akRight]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Caption = 'Exit'
    DoSubmitValidation = False
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'buttonExit'
    ScriptEvents = <>
    TabOrder = 2
    OnClick = buttonExitClick
  end
  object listboxSessions: TIWListbox
    Left = 8
    Top = 32
    Width = 449
    Height = 361
    Cursor = crAuto
    Anchors = [akLeft, akTop, akRight, akBottom]
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FocusColor = clNone
    AutoHideOnMenuActivation = False
    ItemsHaveValues = True
    NoSelectionText = '-- No Selection --'
    Required = True
    RequireSelection = True
    ScriptEvents = <>
    UseSize = True
    DoSubmitValidation = True
    Editable = True
    TabOrder = 3
    FriendlyName = 'Session'
    ItemIndex = -1
    MultiSelect = False
    Sorted = False
  end
  object IWLabel1: TIWLabel
    Left = 8
    Top = 8
    Width = 298
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = False
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    FriendlyName = 'IWLabel1'
    Caption = 'Active sessions (current one is prefixed with *):'
    RawText = False
  end
end
