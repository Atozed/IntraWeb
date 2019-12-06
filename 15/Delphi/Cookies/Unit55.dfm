object IWForm55: TIWForm55
  Left = 0
  Top = 0
  Width = 613
  Height = 498
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
  object IWEdit1: TIWEdit
    Left = 56
    Top = 123
    Width = 345
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit1'
    SubmitOnAsyncEvent = True
    TabOrder = 0
    Text = 'This is the cookie value'
  end
  object IWLabel1: TIWLabel
    Left = 56
    Top = 96
    Width = 104
    Height = 21
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'Cookie Value'
  end
  object IWButton1: TIWButton
    Left = 424
    Top = 119
    Width = 129
    Height = 25
    Caption = 'Save Cookie'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 424
    Top = 160
    Width = 129
    Height = 25
    Caption = 'Read Cookie'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton2'
    TabOrder = 2
    OnClick = IWButton2Click
  end
  object IWEdit2: TIWEdit
    Left = 56
    Top = 160
    Width = 345
    Height = 21
    StyleRenderOptions.RenderBorder = False
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWEdit2'
    ReadOnly = True
    SubmitOnAsyncEvent = True
    TabOrder = 3
  end
end
