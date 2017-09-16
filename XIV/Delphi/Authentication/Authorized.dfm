object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 848
  Height = 450
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
  object IWMemo1: TIWMemo
    Left = 50
    Top = 40
    Width = 769
    Height = 257
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 0
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'This is the second form. You may start your session pointing to ' +
        'this form, using /auth/index.html in the URL, like this:'
      ''
      'http://127.0.0.1:8888/auth/index.html'
      ''
      '* Please note that the port number may differ.'
      ''
      ''
      
        'Authentication is a feature exlusive o IntraWeb Ultimate. Thus, ' +
        'it won'#39't work with Personal or Standard editions.'
      ''
      
        'See feature matrix: http://www.atozed.com/intraweb/FeatureMatrix' +
        'XIV.EN.aspx')
  end
  object IWGradButton1: TIWGradButton
    Left = 50
    Top = 352
    Width = 140
    Height = 36
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
    Caption = 'Open the main form'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWGradButton1'
    TabOrder = 1
    OnClick = IWGradButton1Click
  end
  object IWLabel1: TIWLabel
    Left = 50
    Top = 320
    Width = 123
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Authenticated user:'
  end
end
