object formThreaded: TformThreaded
  Left = 0
  Top = 0
  Width = 477
  Height = 193
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  Title = 'Threaded Operation'
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWText1: TIWText
    Left = 16
    Top = 8
    Width = 441
    Height = 41
    BGColor = clNone
    ConvertSpaces = True
    FriendlyName = 'IWText1'
    Lines.Strings = (
      
        'This demonstrates how to handle a long background task such as a' +
        ' '
      
        'database or other operation and still display feedback to the us' +
        'er.')
    RawText = False
    UseFrame = False
    WantReturns = True
  end
  object linkStart: TIWLink
    Left = 32
    Top = 56
    Width = 65
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'linkStart'
    OnClick = linkStartClick
    RawText = False
    Caption = 'Start'
  end
  object lablPercentComplete: TIWLabel
    Left = 216
    Top = 56
    Width = 169
    Height = 16
    HasTabOrder = False
    AutoSize = False
    FriendlyName = 'lablPercentComplete'
    Caption = 'Thread Stopped'
  end
  object linkStop: TIWLink
    Left = 32
    Top = 93
    Width = 65
    Height = 17
    Visible = False
    Alignment = taLeftJustify
    Color = clNone
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'linkStop'
    OnClick = linkStopClick
    TabOrder = 1
    RawText = False
    Caption = 'Stop'
  end
  object IWProgressBar1: TIWProgressBar
    Left = 216
    Top = 93
    Width = 225
    Height = 17
    BGColor = clWebSILVER
    FriendlyName = 'IWProgressBar1'
    Color = clWebBLUE
    Percent = 0
    ShowText = False
  end
  object linkBack: TIWLink
    Left = 408
    Top = 168
    Width = 65
    Height = 17
    Alignment = taLeftJustify
    Color = clNone
    HasTabOrder = True
    DoSubmitValidation = False
    FriendlyName = 'linkBack'
    OnClick = linkBackClick
    TabOrder = 2
    RawText = False
    Caption = 'Back'
  end
  object IWTimer1: TIWTimer
    Enabled = False
    Interval = 1000
    ShowAsyncLock = False
    OnTimer = IWTimer1Timer
    Left = 112
    Top = 112
  end
end
