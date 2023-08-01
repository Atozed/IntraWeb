object IWForm5: TIWForm5
  Left = 0
  Top = 0
  Width = 1200
  Height = 788
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 42
    Top = 88
    Width = 769
    Height = 257
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
    Lines.Strings = (
      
        'In this demo we will show how to create files and add them to th' +
        'e session cache. '
      
        'The same cache file may be served many times by your application' +
        ' during the session.'
      ''
      
        'Both cache files are deleted as soon as the session is destroyed' +
        '.'
      ''
      
        'The URL for both images below are set dynamically and they point' +
        ' to a cache file.'
      ''
      'Check the code in UserSessionUnit.pas to see how we did it.'
      ''
      
        'Also, click the button to open the second form and see the same ' +
        'images on it. Both images were not served again.'
      ''
      
        'We have used PNG images here but other things may be used this w' +
        'ay as well: video and sound files, PDF reports created at runtim' +
        'e, etc.')
  end
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 42
    Top = 24
    Width = 512
    Height = 33
    Font.Color = clWebRED
    Font.Size = 20
    Font.Style = []
    Font.PxSize = 26
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This demo requires IntraWeb 14.0.11+'
  end
  object IWGradButton1: TIWGradButton
    AlignWithMargins = False
    Left = 48
    Top = 376
    Width = 257
    Height = 36
    Style.Border.Color = 1051800
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.Font.PxSize = 13
    Style.Button.FromColor = 2366701
    Style.Button.ToColor = 1512362
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.Font.PxSize = 13
    Style.ButtonHover.FromColor = 1775049
    Style.ButtonHover.ToColor = 1380769
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.Font.PxSize = 13
    Style.ButtonActive.FromColor = 1512362
    Style.ButtonActive.ToColor = 2366701
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.Font.PxSize = 13
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csRed
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open PDF in New Window'
    Color = clBtnFace
    FriendlyName = 'IWGradButton1'
    TabOrder = 2
    OnClick = IWGradButton1Click
  end
  object IWGradButton2: TIWGradButton
    AlignWithMargins = False
    Left = 48
    Top = 432
    Width = 257
    Height = 36
    Style.Border.Color = 1051800
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.Font.PxSize = 13
    Style.Button.FromColor = 2366701
    Style.Button.ToColor = 1512362
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.Font.PxSize = 13
    Style.ButtonHover.FromColor = 1775049
    Style.ButtonHover.ToColor = 1380769
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.Font.PxSize = 13
    Style.ButtonActive.FromColor = 1512362
    Style.ButtonActive.ToColor = 2366701
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.Font.PxSize = 13
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csRed
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open Image in New Window'
    Color = clBtnFace
    FriendlyName = 'IWGradButton1'
    TabOrder = 3
    OnClick = IWGradButton2Click
  end
  object IWURLWindow1: TIWURLWindow
    AlignWithMargins = False
    Left = 328
    Top = 376
    Width = 483
    Height = 385
    FriendlyName = 'IWURLWindow1'
    Border = False
    MarginWidth = 0
    MarginHeight = 0
    Scrolling = usYes
  end
  object IWGradButton3: TIWGradButton
    AlignWithMargins = False
    Left = 48
    Top = 488
    Width = 257
    Height = 36
    Style.Border.Color = 1051800
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.Font.PxSize = 13
    Style.Button.FromColor = 2366701
    Style.Button.ToColor = 1512362
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.Font.PxSize = 13
    Style.ButtonHover.FromColor = 1775049
    Style.ButtonHover.ToColor = 1380769
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.Font.PxSize = 13
    Style.ButtonActive.FromColor = 1512362
    Style.ButtonActive.ToColor = 2366701
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.Font.PxSize = 13
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csRed
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open PDF in URLWindow'
    Color = clBtnFace
    FriendlyName = 'IWGradButton1'
    TabOrder = 4
    OnClick = IWGradButton3Click
  end
  object IWGradButton4: TIWGradButton
    AlignWithMargins = False
    Left = 48
    Top = 544
    Width = 257
    Height = 36
    Style.Border.Color = 1051800
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.Font.PxSize = 13
    Style.Button.FromColor = 2366701
    Style.Button.ToColor = 1512362
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.Font.PxSize = 13
    Style.ButtonHover.FromColor = 1775049
    Style.ButtonHover.ToColor = 1380769
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.Font.PxSize = 13
    Style.ButtonActive.FromColor = 1512362
    Style.ButtonActive.ToColor = 2366701
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.Font.PxSize = 13
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csRed
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open PDF in URLWindow (Async)'
    Color = clBtnFace
    FriendlyName = 'IWGradButton1'
    TabOrder = 5
    OnAsyncClick = IWGradButton4AsyncClick
  end
  object IWGradButton5: TIWGradButton
    AlignWithMargins = False
    Left = 48
    Top = 600
    Width = 257
    Height = 36
    Style.Border.Color = 1051800
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.Font.PxSize = 13
    Style.Button.FromColor = 2366701
    Style.Button.ToColor = 1512362
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.Font.PxSize = 13
    Style.ButtonHover.FromColor = 1775049
    Style.ButtonHover.ToColor = 1380769
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.Font.PxSize = 13
    Style.ButtonActive.FromColor = 1512362
    Style.ButtonActive.ToColor = 2366701
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.Font.PxSize = 13
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csRed
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open PDF Stream in URLWindow (Async)'
    Color = clBtnFace
    FriendlyName = 'IWGradButton1'
    TabOrder = 6
    OnAsyncClick = IWGradButton5AsyncClick
  end
  object IWGradButton6: TIWGradButton
    AlignWithMargins = False
    Left = 48
    Top = 656
    Width = 257
    Height = 36
    Style.Border.Color = 1051800
    Style.Border.Width = 1
    Style.BorderDisabled.Color = clWebGRAY
    Style.BorderDisabled.Width = 1
    Style.Button.Alignment = taCenter
    Style.Button.Font.Color = clWebWHITE
    Style.Button.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.Button.Font.Size = 10
    Style.Button.Font.Style = []
    Style.Button.Font.PxSize = 13
    Style.Button.FromColor = 2366701
    Style.Button.ToColor = 1512362
    Style.ButtonHover.Alignment = taCenter
    Style.ButtonHover.Font.Color = clWebWHITE
    Style.ButtonHover.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonHover.Font.Size = 10
    Style.ButtonHover.Font.Style = []
    Style.ButtonHover.Font.PxSize = 13
    Style.ButtonHover.FromColor = 1775049
    Style.ButtonHover.ToColor = 1380769
    Style.ButtonActive.Alignment = taCenter
    Style.ButtonActive.Font.Color = clWebWHITE
    Style.ButtonActive.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonActive.Font.Size = 10
    Style.ButtonActive.Font.Style = []
    Style.ButtonActive.Font.PxSize = 13
    Style.ButtonActive.FromColor = 1512362
    Style.ButtonActive.ToColor = 2366701
    Style.ButtonDisabled.Alignment = taCenter
    Style.ButtonDisabled.Font.Color = clWebWHITE
    Style.ButtonDisabled.Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Style.ButtonDisabled.Font.Size = 10
    Style.ButtonDisabled.Font.Style = []
    Style.ButtonDisabled.Font.PxSize = 13
    Style.ButtonDisabled.FromColor = clWebLIGHTGRAY
    Style.ButtonDisabled.ToColor = 7368816
    Style.ColorScheme = csRed
    Style.BoxShadow.ColorTransparency = 0.500000000000000000
    Style.TextShadow.ColorTransparency = 0.500000000000000000
    Caption = 'Open PDF in Modal Window'
    Color = clBtnFace
    FriendlyName = 'IWGradButton1'
    TabOrder = 1
    OnAsyncClick = IWGradButton6AsyncClick
  end
  object IWModalWindow1: TIWModalWindow
    Left = 96
    Top = 720
  end
end
