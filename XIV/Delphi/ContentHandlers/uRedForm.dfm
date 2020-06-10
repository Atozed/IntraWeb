object RedForm: TRedForm
  Left = 0
  Top = 0
  Width = 752
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  BGColor = clWebRED
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 8
  DesignTop = 8
  object IWLabel1: TIWLabel
    Left = 48
    Top = 32
    Width = 330
    Height = 16
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This is the red form. Please note the URL in Browser'
  end
  object IWButton1: TIWButton
    Left = 48
    Top = 80
    Width = 161
    Height = 25
    Caption = 'Back to Main Form Sync'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    Left = 48
    Top = 224
    Width = 161
    Height = 25
    Caption = 'A Sync Action'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    Left = 48
    Top = 272
    Width = 161
    Height = 25
    Caption = 'An Async Action'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWButton4: TIWButton
    Left = 48
    Top = 120
    Width = 161
    Height = 25
    Caption = 'Back to Main Form Async'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    TabOrder = 3
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWMemo1: TIWMemo
    Left = 257
    Top = 224
    Width = 456
    Height = 145
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 4
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
end
