object IWForm50: TIWForm50
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
  object IWButton1: TIWButton
    Left = 24
    Top = 25
    Width = 161
    Height = 25
    Caption = 'Terminate And Redirect'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWEdit1: TIWEdit
    Left = 133
    Top = 80
    Width = 369
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 1
    Text = 'http://www.atozed.com'
  end
  object IWLabel1: TIWLabel
    Left = 24
    Top = 80
    Width = 73
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Redirect to:'
  end
  object IWLabel2: TIWLabel
    Left = 24
    Top = 122
    Width = 60
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel2'
    Caption = 'Message:'
  end
  object IWLabel3: TIWLabel
    Left = 24
    Top = 166
    Width = 103
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel3'
    Caption = 'Time (seconds):'
  end
  object IWEdit2: TIWEdit
    Left = 133
    Top = 122
    Width = 369
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 2
    Text = 'You will be redirected to another site'
  end
  object IWEdit3: TIWEdit
    Left = 134
    Top = 164
    Width = 100
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 3
    Text = '5'
  end
end
