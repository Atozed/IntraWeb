object MainForm: TMainForm
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
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
  object IWLink1: TIWLink
    Left = 37
    Top = 24
    Width = 185
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = [fsUnderline]
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink1Click
    TabOrder = 0
    RawText = False
    Caption = 'Show Parent Frame'
  end
  object IWLink2: TIWLink
    Left = 37
    Top = 59
    Width = 185
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
    Font.Size = 11
    Font.Style = [fsUnderline]
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink2Click
    TabOrder = 1
    RawText = False
    Caption = 'Show Child Frame'
  end
end
