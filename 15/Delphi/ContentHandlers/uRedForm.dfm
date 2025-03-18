object RedForm: TRedForm
  Left = 0
  Top = 0
  Width = 752
  Height = 400
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnGenerateForm = IWAppFormGenerateForm
  BGColor = clWebRED
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object IWLabel1: TIWLabel
    AlignWithMargins = False
    Left = 48
    Top = 32
    Width = 379
    Height = 16
    HasTabOrder = False
    FriendlyName = 'IWLabel1'
    Caption = 'This is the red form. Please note the URL in Browser'
  end
  object IWButton1: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 80
    Width = 161
    Height = 25
    Caption = 'Back to Main Form Sync'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    OnClick = IWButton1Click
  end
  object IWButton2: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 224
    Width = 161
    Height = 25
    Caption = 'A Sync Action'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 1
    OnClick = IWButton2Click
  end
  object IWButton3: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 272
    Width = 161
    Height = 25
    Caption = 'An Async Action'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 2
    OnAsyncClick = IWButton3AsyncClick
  end
  object IWButton4: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 120
    Width = 161
    Height = 25
    Caption = 'Back to Main Form Async'
    Color = clBtnFace
    FriendlyName = 'IWButton1'
    TabOrder = 3
    OnAsyncClick = IWButton4AsyncClick
  end
  object IWMemo1: TIWMemo
    AlignWithMargins = False
    Left = 257
    Top = 224
    Width = 456
    Height = 145
    StyleRenderOptions.RenderBorder = False
    BGColor = clNone
    Editable = True
    InvisibleBorder = False
    HorizScrollBar = False
    VertScrollBar = True
    Required = False
    TabOrder = 4
    SubmitOnAsyncEvent = True
    FriendlyName = 'IWMemo1'
  end
end
