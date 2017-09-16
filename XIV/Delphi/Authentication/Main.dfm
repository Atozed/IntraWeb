object IWForm2: TIWForm2
  Left = 0
  Top = 0
  Width = 1058
  Height = 528
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 42
    Top = 24
    Width = 512
    Height = 33
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 20
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This demo requires IntraWeb 14.0.11+'
    RawText = False
  end
  object IWMemo1: TIWMemo
    Left = 42
    Top = 88
    Width = 769
    Height = 257
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    ScriptEvents = <>
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to use TAuther components in an In' +
        'traWeb application. '
      'We will also use here the new content handlers.'
      '')
  end
  object IWGradButton1: TIWGradButton
    Left = 40
    Top = 400
    Width = 140
    Height = 36
    Cursor = crAuto
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    Style.Border.Color = 818394
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.FromColor = 1746426
    Style.Button.ToColor = 2128628
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.FromColor = 1150712
    Style.ButtonHover.ToColor = 1401072
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.FromColor = 2128628
    Style.ButtonActive.ToColor = 1746426
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csOrange
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open another form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWGradButton1'
    ScriptEvents = <>
    TabOrder = 1
    OnClick = IWGradButton1Click
  end
  object IWLabel2: TIWLabel
    Left = 42
    Top = 368
    Width = 123
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
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Authenticated user:'
    RawText = False
  end
end
