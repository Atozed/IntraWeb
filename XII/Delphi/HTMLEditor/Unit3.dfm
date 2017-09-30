object IWForm3: TIWForm3
  Left = 0
  Top = 0
  Width = 463
  Height = 393
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clWebANTIQUEWHITE
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
    Left = 24
    Top = 32
    Width = 161
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink1Click
    TabOrder = 0
    RawText = False
    Caption = 'Edit the HTML doc'
  end
  object IWLink2: TIWLink
    Left = 24
    Top = 72
    Width = 161
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = [fsUnderline]
    DoSubmitValidation = False
    FriendlyName = 'IWLink1'
    OnClick = IWLink2Click
    TabOrder = 1
    RawText = False
    Caption = 'View the HTML doc'
  end
end
