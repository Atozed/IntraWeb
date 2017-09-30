object FormNickname: TFormNickname
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  ConnectionMode = cmAny
  Title = 'Entering Session Manager'
  SupportedBrowsers = [brIE, brNetscape7, brOpera, brSafari, brNetscape6]
  AllowPageAccess = True
  ActiveControl = editNickname
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
  DesignLeft = 417
  DesignTop = 190
  object IWRegion1: TIWRegion
    Left = 181
    Top = 151
    Width = 193
    Height = 97
    Cursor = crAuto
    Anchors = []
    BorderOptions.NumericWidth = 0
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsNone
    BorderOptions.Color = clNone
    Color = clWebWHITESMOKE
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    object IWLabel1: TIWLabel
      Left = 16
      Top = 8
      Width = 166
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
      Caption = 'Please enter a nickname:'
      RawText = False
    end
    object editNickname: TIWEdit
      Left = 16
      Top = 32
      Width = 161
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
      FriendlyName = 'Nickname'
      MaxLength = 0
      ReadOnly = False
      Required = True
      ScriptEvents = <>
      TabOrder = 0
      OnSubmit = editNicknameSubmit
      PasswordPrompt = False
    end
    object buttonEnter: TIWButton
      Left = 16
      Top = 64
      Width = 161
      Height = 25
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      Caption = 'Enter'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'buttonEnter'
      ScriptEvents = <>
      TabOrder = 1
      OnClick = buttonEnterClick
    end
  end
end
